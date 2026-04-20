`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_rx_fsm ();

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

    logic new_packet, byte_done, bits_done;
    logic [2:0] pbits, mbits;
    logic [6:0] buffer_occ;
    logic [7:0] byte_in;
    logic byte_shift, bits_shift, rx_transfer_active, rx_data_ready, store_rx_packet_data, rx_error, flush;
    logic [2:0] rx_packet;
    logic [7:0] rx_packet_data;

    rx_fsm DUT(
        .clk(clk),
        .n_rst(n_rst),
        .new_packet(new_packet),
        .byte_done(byte_done),
        .bits_done(bits_done),
        .pbits(pbits),
        .mbits(mbits),
        .buffer_occ(buffer_occ),
        .byte_in(byte_in),
        .byte_shift(byte_shift),
        .bits_shift(bits_shift),
        .rx_transfer_active(rx_transfer_active),
        .rx_data_ready(rx_data_ready),
        .rx_error(rx_error),
        .store_rx_packet_data(store_rx_packet_data),
        .rx_packet(rx_packet),
        .rx_packet_data(rx_packet_data),
        .flush(flush)
    );

    initial begin
        n_rst = 1;

        reset_dut;

        new_packet = '0;
        byte_done = '0;
        bits_done = '0;
        byte_in = '0;
        pbits = '0; mbits = '0;
        buffer_occ = '0;

        new_packet = 1;
        @(negedge clk);
        new_packet = 0;
        byte_done = 1;
        byte_in = 8'b10000000;
        @(negedge clk);
        byte_done = 0;
        @(negedge clk);
        byte_done = 1;
        byte_in = 8'b01101001;
        @(negedge clk);
        byte_done = 0;
        @(negedge clk);
        @(negedge clk);
        byte_done = 1;
        byte_in = 8'hAB;
        @(negedge clk);

        $finish;
    end
endmodule

/* verilator coverage_on */

