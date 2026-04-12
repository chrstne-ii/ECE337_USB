`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_usb_rx ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;

    // clockgen
    always begin
        clk = 0;
        #(CLK_PERIOD / 2.0);
        clk = 1;
        #(CLK_PERIOD / 2.0);
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
    input time data_period;
    integer i;
    begin
        // First synchronize to away from clock's rising edge
        @(negedge clk)
        
        // Send data bits
        for(i = 0; i < 8; i = i + 1)
        begin
        dp_in = data[i];
        dm_in = ~dp_in;
        #data_period;
        end
    end
    endtask

    task send_token;
    
    begin
        @(negedge clk);
    end
    endtask

    usb_rx DUT (.clk(clk), .n_rst(n_rst), .dp_in(dp_in), .dm_in(dm_in), .rx_packet(rx_packet), .rx_packet_data(rx_packet_data)
                .rx_data_ready(rx_data_ready), .rx_error(.rx_error), .rx_transfer_active(rx_transfer_active), .flush(flush));

    initial begin
        n_rst = 1;

        reset_dut;

        $finish;
    end
endmodule

/* verilator coverage_on */

