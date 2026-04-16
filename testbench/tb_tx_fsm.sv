`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_tx_fsm ();

    localparam CLK_PERIOD = 10ns;
    localparam DATA0 =   4'b0011;
    localparam DATA1 =   4'b1011;
    localparam ACK   =   4'b0010;
    localparam NAK   =   4'b1010;
    localparam STALL =   4'b1110;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;
    logic [3:0] tx_packet;
    logic [6:0] buffer_occupancy;
    logic [7:0] pid_packet;
    logic bit_clk, enable_timer, tx_transfer_active, idle, end_packet, get_tx_packet_data, first, clear, tx_error;
    logic [7:0] packet;

    tx_fsm DUT_tx_fsm(.*);

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

    tx_fsm #() DUT (.*);

    initial begin
        tx_packet = 4'b0;
        buffer_occupancy = 7'b0;
        pid_packet = 8'b0;
        bit_clk = 1'b0;
        n_rst = 1;

        reset_dut;

        //test error
        tx_packet = DATA0;
        buffer_occupancy = 7'b0;
        @(negedge clk);

        //stay in error
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);

        //leave error
        buffer_occupancy = 7'd3;
        @(negedge clk);
        
        //go back to idle
        n_rst = 0;
        @(negedge clk);
        n_rst = 1

        //


        $finish;
    end
endmodule

/* verilator coverage_on */

