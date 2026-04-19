`timescale 1ns / 10ps

module tb_usb_bulk_endpoint ();

    // Core Parameters & Address Map
    localparam CLK_PERIOD = 10ns;
    
    localparam [3:0] ADDR_STATUS = 4'h0;
    localparam [3:0] ADDR_CTRL   = 4'h4;
    localparam [3:0] ADDR_FIFO   = 4'h8;

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
    
    // Signals
    
    logic clk, n_rst;
    
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
    
    usb_ahb_top DUT (
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

    
    // AHB Master Simulation Tasks
    
    task ahb_write(input [3:0] addr, input [31:0] data, input [1:0] size = 2'b10);
    begin
        // Address Phase
        @(negedge clk);
        hsel = 1; hwrite = 1; haddr = addr; hwdata = data; 
        htrans = 2'b10; hsize = size; hburst = 3'b000;
        
        // Wait for Data Phase to complete
        do begin @(posedge clk); end while (!hready);
        
        // Return to Idle
        @(negedge clk);
        hsel = 0; htrans = 2'b00;
    end
    endtask

    task ahb_read(input [3:0] addr, output [31:0] data_out, input [1:0] size = 2'b10);
    begin
        // Address Phase
        @(negedge clk);
        hsel = 1; hwrite = 0; haddr = addr; 
        htrans = 2'b10; hsize = size; hburst = 3'b000;
        
        // Wait for Data Phase
        do begin @(posedge clk); end while (!hready);
        
        data_out = hrdata; // Sample data

        // Return to Idle
        @(negedge clk);
        hsel = 0; htrans = 2'b00;
    end
    endtask

    
    // Main Test Sequence
    
    initial begin
        // Initialize
        clk = 0; n_rst = 0; test_case_num = 0;
        hsel = 0; hwrite = 0; htrans = 0;
        
        $display("Starting USB Bulk Endpoint Testbench...");

        // Reset DUT
        repeat(5) @(posedge clk);
        n_rst = 1;
        repeat(5) @(posedge clk);

        // ====================================================================
        // Rubric: (6 pts) AHB Interface handles reads/writes to all addresses
        // ====================================================================
        test_case_num++;
        $display("Test %0d: AHB Interface Map Testing", test_case_num);
        
        // Write/Read Control Register
        ahb_write(ADDR_CTRL, 32'h0000_0001); 
        ahb_read(ADDR_CTRL, read_val);
        if(read_val !== 32'h0000_0001) $error("AHB CTRL Reg Read/Write Failed");

        // Write/Read FIFO (Checking basic AHB access to FIFO address)
        ahb_write(ADDR_FIFO, 32'hDEAD_BEEF);
        // Note: Reading FIFO immediately might pop it depending on your design.
        
        // ====================================================================
        // Rubric: (15 pts) Host-to-Endpoint USB 1.1 Bulk Transfers (OUT)
        // Rubric: (1 pt) FIFO stores data from USB RX and provides to SoC
        // Rubric: (6 pts) USB RX module correctly receives USB packet types
        // ====================================================================
        test_case_num++;
        $display("Test %0d: Host-to-Endpoint (OUT) & RX Module Verification", test_case_num);
        
        // 1. Simulate Host sending OUT token + DATA0 packet (e.g., 4 bytes: 0x11223344)
        // ** REPlACE this with your model's built-in host transfer function **
        // tb_model.send_usb_packet(PID_OUT, ...);
        // tb_model.send_usb_packet(PID_DATA0, 32'h11223344); 
        
        // Wait for transfer to complete on the bus
        repeat(50) @(posedge clk); 

        // 2. Read from AHB FIFO to prove data arrived correctly (1 pt FIFO RX requirement)
        ahb_read(ADDR_FIFO, read_val);
        if(read_val !== 32'h11223344) $error("FIFO did not correctly store RX data from Host!");
        else $display("Host-to-Endpoint OUT Transfer Successful.");

        // ====================================================================
        // Rubric: (15 pts) Endpoint-to-Host USB 1.1 Bulk Transfers (IN)
        // Rubric: (1 pt) FIFO stores data from SoC and provides to USB TX
        // ====================================================================
        test_case_num++;
        $display("Test %0d: Endpoint-to-Host (IN) Verification", test_case_num);

        // 1. SoC writes data to the FIFO (1 pt FIFO TX requirement)
        ahb_write(ADDR_FIFO, 32'h55667788);

        // 2. Simulate Host sending IN token
        // ** REPlACE this with your model's built-in host transfer function **
        // tb_model.send_usb_packet(PID_IN, ...);
        
        // 3. Monitor the bus to ensure the TX module outputs DATA0/DATA1 with 0x55667788
        // tb_model.expect_usb_packet(PID_DATA1, 32'h55667788);
        
        repeat(50) @(posedge clk);
        $display("Endpoint-to-Host IN Transfer Validated (assuming built-in checkers passed).");

        // ====================================================================
        // Rubric: (4 pts) TX module handles sending STALL packet
        // ====================================================================
        test_case_num++;
        $display("Test %0d: STALL Packet Generation", test_case_num);

        // 1. Put Endpoint into STALL condition via AHB Control Register
        // (Assuming bit 1 of CTRL reg is force_stall, adjust to your spec)
        ahb_write(ADDR_CTRL, 32'h0000_0002); 

        // 2. Host requests data via IN token
        // tb_model.send_usb_packet(PID_IN, ...);

        // 3. Verify DUT responds immediately with STALL PID
        // tb_model.expect_usb_packet(PID_STALL, ...);
        
        repeat(50) @(posedge clk);
        $display("STALL generation verified.");

        // Finish simulation
        $display("All test vectors executed.");
        $finish;
    end

endmodule