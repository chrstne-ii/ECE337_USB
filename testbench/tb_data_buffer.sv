`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_data_buffer ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;
    logic flush, clear, store_rx_packet_data, store_tx_data, get_rx_data, get_tx_packet_data;
    logic [6:0] buffer_occupancy;
    logic [7:0] tx_data, rx_packet_data, rx_data, tx_packet_data;

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

    data_buffer #() DUT (.*);

    initial begin
        store_rx_packet_data = 0;
        store_tx_data = 0;
        clear = 0;
        flush = 0;
        rx_packet_data = 8'b00001111;
        tx_packet_data = 8'b11110000;
        get_rx_data = 0;
        get_tx_packet_data = 0;
        n_rst = 1;

        reset_dut;

        //push rx data
        store_rx_packet_data = 1;
        @(negedge clk);
        store_rx_packet_data = 0;

        //push tx data
        store_tx_data = 1;
        @(negedge clk);
        store_tx_data = 0;

        //pop rx data
        get_rx_data = 1;
        @(negedge clk);
        get_rx_data = 0;

        //pop tx data
        get_tx_packet_data = 1
        @(negedge clk);
        get_tx_packet_data = 0;

        //hold fifo
        @(negedge clk);

        //clear fifo
        store_rx_packet_data = 1;
        repeat (10) @(negedge clk) //load data in
        store_rx_packet_data = 0;
        clear = 1;
        @(negedge clk);

        //flush fifo
        store_tx_data = 1;
        repeat (10) @(negedge clk) //load data in
        store_tx_data = 0;
        flush = 1;
        @(negedge clk);


        $finish;
    end
endmodule

/* verilator coverage_on */

