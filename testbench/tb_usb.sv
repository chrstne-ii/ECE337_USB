`timescale 1ns / 10ps

module tb_usb();

    // Core Parameters & Address Map
    localparam CLK_PERIOD = 10ns;
    localparam USB_PERIOD = 83.33ns;
    
    localparam [3:0] BUFF_ADDR = 4'h0;
    localparam [3:0] STAT_ADDR   = 4'h4;
    localparam [3:0] ERR_ADDR   = 4'h6;
    localparam [3:0] OCC_ADDR   = 4'h8;
    localparam [3:0] TX_ADDR   = 4'hC;
    localparam [3:0] FLUSH_ADDR   = 4'hD;

    localparam [3:0] PID_OUT   = 4'b0001;
    localparam [3:0] PID_IN    = 4'b1001;
    localparam [3:0] PID_DATA0 = 4'b0011;
    localparam [3:0] PID_DATA1 = 4'b1011;
    localparam [3:0] PID_ACK   = 4'b0010;
    localparam [3:0] PID_NAK   = 4'b1010;
    localparam [3:0] PID_STALL = 4'b1110;

    initial begin
        $dumpfile("waveform.fst");
        $dumpvars;
    end
    
    string test_string, phase;

    // Signals
    
    logic clk, n_rst, usb_clk;
    
    // AHB Subordinate Interface
    logic hsel, hwrite, hready, hresp;
    logic [1:0] htrans, hsize;
    logic [3:0] haddr;
    logic [31:0] hwdata, hrdata;

    // USB PHY Interface
    logic dp_in, dm_in;   // Driven by Testbench (Virtual Host)
    logic dp_out, dm_out; // Driven by DUT (Endpoint)
    logic d_mode;         // 1 = DUT Driving, 0 = DUT Receiving

    // Testbench Variables
    logic [31:0] read_val;
    integer test_case_num;

    
    // Device Under Test (DUT)
    
    usb DUT (
        .clk(clk),
        .n_rst(n_rst),
        .hsel(hsel),
        .haddr(haddr),
        .htrans(htrans),
        .hsize(hsize),
        .hwrite(hwrite),
        .hwdata(hwdata),
        .hrdata(hrdata),
        .hready(hready),
        .hresp(hresp),
        .dp_in(dp_in),
        .dm_in(dm_in),
        .dp_out(dp_out),
        .dm_out(dm_out),
        .d_mode(d_mode)
    );

    // clockgen
    always begin
        clk = 0;
        #(CLK_PERIOD / 2.0);
        clk = 1;
        #(CLK_PERIOD / 2.0);
    end

    always begin
        usb_clk = 0;
        #(USB_PERIOD / 2.0);
        usb_clk = 1;
        #(USB_PERIOD / 2.0);
    end

    task send_byte;
    input [7:0] data;
    integer i;
    begin
        // First synchronize to away from clock's rising edge
        // @(negedge usb_clk);

        // Send data bits
        for(i = 0; i < 8; i = i + 1)
        begin
            if(data[i] == '0) begin
                dp_in = ~dp_in;
                dm_in = dp_in ? '0 : 1'b1;
            end 

            @(negedge usb_clk);
        end
    end
    endtask

    task send_sync;
    begin
        send_byte(.data(8'b00000001));
    end
    endtask 

    task send_eop;
    input correct;
    begin
        // @(negedge usb_clk);
        if(correct) begin
            dp_in = '0;
            dm_in = '0;
            repeat(2) @(negedge usb_clk);
            dp_in = 1;
            dm_in = '0;
        end else begin
            dp_in = '0;
            dm_in = 1;
            @(negedge clk);
            dp_in = 1;
            dm_in = '0;
            @(negedge usb_clk);
            dp_in = '0;
            dm_in = 1;
        end
        @(negedge usb_clk);
    end 
    endtask

    task send_token;
    input [7:0] pid;
    input [15:0] data;
    input correct;
    begin
        send_sync();
        @(negedge usb_clk);
        send_byte(.data(pid));
        send_byte(.data(data[7:0]));
        send_byte(.data(data[15:8]));
        // @(negedge usb_clk);
        send_eop(.correct(correct));
    end
    endtask

    // AHB Master Simulation Tasks
    
    task ahb_write(input [3:0] addr, input [31:0] data, input [1:0] size);
    begin
        if(addr < 4'h4) begin
            //clear buffer
            phase = "ADDRESS";
            @(negedge clk);
            hsel = 1; hwrite = 1; haddr = 4'hD; hwdata = 32'h1; 
            htrans = 2'b10; hsize = 2'h0;

            phase = "DATA";
            // Wait for Data Phase to complete
            @(posedge clk);
            @(posedge clk);
            
            // Return to Idle
            @(negedge clk);
            hsel = 0; htrans = 2'b00;
        end

        // Address Phase
        @(negedge clk);
        hsel = 1; hwrite = 1; haddr = addr; hwdata = data; 
        htrans = 2'b10; hsize = size;
        
        // Wait for Data Phase to complete
        do begin @(posedge clk); end while (!hready);
        
        // Return to Idle
        @(negedge clk);
        hsel = 0; htrans = 2'b00;
    end
    endtask

    task ahb_read(input [3:0] addr, output [31:0] data_out, input [1:0] size);
    begin
        // Address Phase
        phase = "ADDRESS";
        @(negedge clk);
        hsel = 1; hwrite = 0; haddr = addr; 
        htrans = 2'b10; hsize = size;
        
        phase = "DATA";
        // Wait for Data Phase
        do begin @(posedge clk); end while (!hready);
        
        data_out = hrdata; // Sample data

        // Return to Idle
        @(negedge clk);
        hsel = 0; htrans = 2'b00;
    end
    endtask

    task send_data;
    input [7:0] pid;
    input [7:0] data;
    input [6:0] num;
    input correct;
    begin
        integer i;
        send_sync();
        @(negedge usb_clk);
        send_byte(.data(pid));
        for(i = 0; i < num; i = i + 1) begin
            send_byte(.data(data));
        end
        //CRC
        send_byte(.data(8'h00));
        send_byte(.data(8'h00));
        // @(negedge usb_clk);
        send_eop(.correct(correct));
    end
    endtask

    // Main Test Sequence
    
    initial begin
        // Initialize
        clk = 0; n_rst = 0; test_case_num = 0;
        hsel = 0; hwrite = 0; htrans = 0; haddr = '0;
        hsize = '0; hwdata = '0;

        // Reset DUT
        repeat(5) @(posedge clk);
        n_rst = 1;
        repeat(5) @(posedge clk);

        test_case_num++;

        $display("Test %0d: Host-to-Endpoint (OUT-ACK)", test_case_num);
        
        //Simulate Host sending OUT token + DATA0 packet 
        send_token(.pid(8'b11100001), .data(16'h00AB), .correct(1'b1));

        send_data(8'b1100_0011,8'b1010_1010,7'd64,1'b1);

        ahb_read(BUFF_ADDR, read_val, 2'h1);    
        if(read_val !== 32'hAAAA) $error("FIFO did not correctly store RX data from Host!");
        else $display("Host-to-Endpoint OUT Transfer Successful.");

        ahb_read(BUFF_ADDR, read_val, 2'h1);
        if(read_val !== 32'hAAAA) $error("FIFO did not correctly store RX data from Host!");
        else $display("Host-to-Endpoint OUT Transfer Successful.");

        ahb_write(4'hC,32'h3,2'h0); //ACK packet


        test_case_num++;

        $display("Test %0d: Host-to-Endpoint (OUT-NAK)", test_case_num);
        
        //Simulate Host sending OUT token + DATA1 packet 
        send_token(.pid(8'b11100001), .data(16'h00AB), .correct(1'b1));

        send_data(8'b1101_1011,8'b0011_0011,7'd32,1'b1);

        ahb_read(BUFF_ADDR, read_val, 2'h1);    
        if(read_val !== 32'h33) $error("FIFO did not correctly store RX data from Host!");
        else $display("Host-to-Endpoint OUT Transfer Successful.");

        ahb_write(4'hC,32'h4,2'h0); //NAK packet


        test_case_num++;

        $display("Test %0d: Host-to-Endpoint (OUT-STALL)", test_case_num);
        
        //Simulate Host sending OUT token + DATA1 packet 
        send_token(.pid(8'b11100001), .data(16'h00AB), .correct(1'b1));

        send_data(8'b1101_1011,8'b0011_0011,7'd64,1'b1);

        ahb_read(BUFF_ADDR, read_val, 2'h1);    
        if(read_val !== 32'h3333) $error("FIFO did not correctly store RX data from Host!");
        else $display("Host-to-Endpoint OUT Transfer Successful.");

        ahb_read(BUFF_ADDR, read_val, 2'h1);
        if(read_val !== 32'h3333) $error("FIFO did not correctly store RX data from Host!");
        else $display("Host-to-Endpoint OUT Transfer Successful.");

        ahb_write(4'hC,32'h5,2'h0); //STALL packet

        test_case_num++;

        $display("Test %0d: Endpoint-to-Host (IN-ACK)", test_case_num);
        
        //Simulate Host sending IN token + DATA0 packet 
        send_token(.pid(8'b01101001), .data(16'h00AB), .correct(1'b1));

        ahb_read(BUFF_ADDR, read_val, 2'h1);    
        if(read_val !== 32'hAB) $error("FIFO did not correctly store RX data from Host!");
        else $display("Host-to-Endpoint OUT Transfer Successful.");

        ahb_write(4'h0,32'hBEEF_BEEF,2'h2);
        ahb_write(4'hC,32'h1,2'h0); // DATA0

        repeat(300) @(posedge clk);

        ahb_write(4'h0,32'hBEEF_BEEF,2'h2);
        ahb_write(4'hC,32'h2,2'h0); // DATA1

        repeat(300) @(posedge clk);

        ahb_write(4'hC,32'h3,2'h0); //ACK packet


        test_case_num++;

        $display("Test %0d: Endpoint-to-Host (IN-NAK)", test_case_num);
        
        //Simulate Host sending IN token + DATA0 packet 
        send_token(.pid(8'b01101001), .data(16'h00AB), .correct(1'b1));

        ahb_read(BUFF_ADDR, read_val, 2'h1);    
        if(read_val !== 32'hAB) $error("FIFO did not correctly store RX data from Host!");
        else $display("Host-to-Endpoint OUT Transfer Successful.");

        ahb_write(4'h0,32'hBEEF_BEEF,2'h2);
        ahb_write(4'hC,32'h1,2'h0); // DATA0

        repeat(300) @(posedge clk);

        ahb_write(4'h0,32'hBEEF_BEEF,2'h2);
        ahb_write(4'hC,32'h2,2'h0); // DATA1

        repeat(300) @(posedge clk);

        ahb_write(4'hC,32'h4,2'h0); //NAK packet


        test_case_num++;

        $display("Test %0d: Endpoint-to-Host (IN-STALL)", test_case_num);
        
        //Simulate Host sending IN token + DATA0 packet 
        send_token(.pid(8'b01101001), .data(16'h00AB), .correct(1'b1));

        ahb_read(BUFF_ADDR, read_val, 2'h1);    
        if(read_val !== 32'hAB) $error("FIFO did not correctly store RX data from Host!");
        else $display("Host-to-Endpoint OUT Transfer Successful.");

        ahb_write(4'h0,32'hBEEF_BEEF,2'h2);
        ahb_write(4'hC,32'h1,2'h0); // DATA0

        repeat(300) @(posedge clk);

        ahb_write(4'h0,32'hBEEF_BEEF,2'h2);
        ahb_write(4'hC,32'h2,2'h0); // DATA1

        repeat(300) @(posedge clk);

        ahb_write(4'hC,32'h5,2'h0); //STALL packet

        $display("All test vectors executed.");
        $finish;
    end

endmodule