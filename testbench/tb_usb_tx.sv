`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_usb_tx ();

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
    logic tx_transfer_active, tx_error, get_tx_packet_data, dp_out, dm_out;
    logic [3:0] tx_packet;
    logic [6:0] buffer_occupancy;
    logic [7:0] tx_packet_data;
    string test;


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

    usb_tx #() DUT (.*);

    initial begin
        n_rst = 1;
        tx_packet = 4'b0;
        tx_packet_data = 8'b0;
        buffer_occupancy = 7'b0;


        reset_dut;

        //test error
        test = "test error";
        tx_packet = DATA0;
        @(negedge clk); //state: ERROR

        //test get_tx_packet_data low
        test = "test get_tx low";
        buffer_occupancy = 12;
        @(negedge clk) //STATE: STORE SYNC
        @(negedge clk) //STATE: LOAD SYNC
        @(negedge clk) //STATE: STORE PID 
        tx_packet = 4'b0;
        repeat (75) @(negedge clk); //STATE: LOAD_PID

        /*test = "test get_tx high";
        tx_packet = DATA0;
        tx_packet_data = 8'b11110000;
        @(negedge clk); //STATE: STORE DATA
        
        test = "test output";
        repeat (75) @(negedge clk); //LOAD DATA + STORE DATA
        buffer_occupancy = 0;
        @(negedge clk) //STATE: STORE CRC1 
        repeat (75) @(negedge clk); //STATE: LOAD CRC1 
        @(negedge clk); //STATE: STORE CRC2
        repeat (75) @(negedge clk); //LOAD CRC2
        @(negedge clk); //STORE EOP
        repeat (75) @(negedge clk); //LOAD EOP 1
        repeat (8) @(negedge clk); //LOAD EOP 2
        repeat(8) @(negedge clk) //RESET
        @(negedge clk) //IDLE */
        

        $finish;
    end
endmodule

/* verilator coverage_on */

