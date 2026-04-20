`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_usb_rx ();

    localparam CLK_PERIOD = 10ns;
    localparam USB_PERIOD = 83.33ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;
    logic usb_clk;
    logic dp_in, dm_in;
    logic [7:0] rx_packet_data;
    logic [6:0] buffer_occ;
    logic [2:0] rx_packet;
    logic rx_transfer_active, rx_data_ready, rx_error, store_rx_packet_data, flush;

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

    task reset_dut;
    begin
        n_rst = 0;
        @(posedge clk);
        @(posedge clk);
        @(negedge clk);
        n_rst = 1;
        @(posedge clk);
        @(posedge clk);
    end
    endtask

    task send_byte;
    input [7:0] data;
    integer i;
    begin
        // First synchronize to away from clock's rising edge
        @(negedge usb_clk);

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
        @(negedge usb_clk);
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
        send_byte(.data(pid));
        send_byte(.data(data[7:0]));
        send_byte(.data(data[15:8]));
        send_eop(.correct(correct));
    end
    endtask

    usb_rx DUT (
        .clk(clk), 
        .n_rst(n_rst), 
        .dp_in(dp_in), 
        .dm_in(dm_in), 
        .buffer_occ(buffer_occ), 
        .rx_packet(rx_packet), 
        .rx_packet_data(rx_packet_data),
        .rx_data_ready(rx_data_ready), 
        .rx_error(rx_error), 
        .rx_transfer_active(rx_transfer_active), 
        .store_rx_packet_data(store_rx_packet_data), 
        .flush(flush)
    );

    initial begin
        n_rst = 1;

        reset_dut;

        dp_in = '1;
        dm_in = '0;
        @(negedge usb_clk)

        // valid IN packet
        send_token(.pid(8'b01101001), .data(16'h00AB), .correct(1'b1));
        
        dp_in = '1;
        dm_in = '0;
        repeat(5) @(negedge usb_clk);

        // valid OUT packet
        send_token(.pid(8'b11100001), .data(16'h00AB), .correct(1'b1));

        dp_in = '1;
        dm_in = '0;
        repeat(5) @(negedge usb_clk);

        // valid ACK packet
        send_sync();
        send_byte(.data(8'b11010010));
        send_eop(.correct(1'b1));

        dp_in = '1;
        dm_in = '0;
        repeat(5) @(negedge usb_clk);

        $finish;
    end
endmodule

/* verilator coverage_on */

