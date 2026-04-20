`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_ahb_subordinate ();

    localparam CLK_PERIOD = 10ns;
    localparam TIMEOUT = 1000;

    localparam BURST_SINGLE = 3'd0;
    localparam BURST_INCR   = 3'd1;
    localparam BURST_WRAP4  = 3'd2;
    localparam BURST_INCR4  = 3'd3;
    localparam BURST_WRAP8  = 3'd4;
    localparam BURST_INCR8  = 3'd5;
    localparam BURST_WRAP16 = 3'd6;
    localparam BURST_INCR16 = 3'd7;

    initial begin
        $dumpfile("waveform.fst");
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

    logic hsel;
    logic [3:0] haddr;
    logic [1:0] hsize;
    logic [2:0] hburst;
    logic [1:0] htrans;
    logic hwrite;
    logic [31:0] hwdata;
    logic [31:0] hrdata;
    logic hresp;
    logic hready;

    logic rx_transfer_active, rx_data_ready, rx_error;
    logic tx_transfer_active, tx_error;
    logic [2:0] rx_packet;
    logic [6:0] buffer_occ;
    logic [7:0] rx_data;

    logic d_mode;
    logic get_rx_data, store_tx_data, clear;
    logic [2:0] tx_packet;
    logic [7:0] tx_data;

    // bus model connections
    ahb_model_updated #(
        .ADDR_WIDTH(4),
        .DATA_WIDTH(4)
    ) BFM ( .clk(clk),
        // AHB-Subordinate Side
        .hsel(hsel),
        .haddr(haddr),
        .hsize(hsize),
        .htrans(htrans),
        .hburst(hburst),
        .hwrite(hwrite),
        .hwdata(hwdata),
        .hrdata(hrdata),
        .hresp(hresp),
        .hready(hready)
    );

    ahb_subordinate DUT(.*);

    task reset_dut;
    begin
        rx_transfer_active = 0;
        rx_data_ready = 0;
        rx_error = 0;
        tx_transfer_active = 0;
        tx_error = '0;
        rx_packet = '0;
        buffer_occ = '0;
        rx_data = '0;

        n_rst = 0;
        @(posedge clk);
        @(posedge clk);
        @(negedge clk);
        n_rst = 1;
        @(negedge clk);
        @(negedge clk);
    end
    endtask

    // Supporting Tasks
    task reset_model;
        BFM.reset_model();
    endtask

    // Read from a register without checking the value
    task enqueue_poll ( input logic [3:0] addr, input logic [1:0] size );
    logic [31:0] data [];
        begin
            data = new [1];
            data[0] = {32'hXXXX};
            //              Fields: hsel,  R/W, addr, data, exp err,         size, burst, chk prdata or not
            BFM.enqueue_transaction(1'b1, 1'b0, addr, data,    1'b0, {1'b0, size},  3'b0,            1'b0);
        end
    endtask

    // Read from a register until a requested value is observed
    task poll_until ( input logic [3:0] addr, input logic [1:0] size, input logic [31:0] data);
        int iters;
        begin
            for (iters = 0; iters < TIMEOUT; iters++) begin
                enqueue_poll(addr, size);
                execute_transactions(1);
                if(BFM.get_last_read() == data) break;
            end
            if(iters >= TIMEOUT) begin
                $error("Bus polling timeout hit.");
            end
        end
    endtask

    // Read Transaction, verifying a specific value is read
    task enqueue_read ( input logic [3:0] addr, input logic [1:0] size, input logic [31:0] exp_read );
        logic [31:0] data [];
        begin
            data = new [1];
            data[0] = exp_read;
            BFM.enqueue_transaction(1'b1, 1'b0, addr, data, 1'b0, {1'b0, size}, 3'b0, 1'b1);
        end
    endtask

    // Write Transaction
    task enqueue_write ( input logic [3:0] addr, input logic [1:0] size, input logic [31:0] wdata );
        logic [31:0] data [];
        begin
            data = new [1];
            data[0] = wdata;
            BFM.enqueue_transaction(1'b1, 1'b1, addr, data, 1'b0, {2'b0, size}, 3'b0, 1'b0);
        end
    endtask

    // Write Transaction Intended for a different subordinate from yours
    task enqueue_fakewrite ( input logic [3:0] addr, input logic [1:0] size, input logic [31:0] wdata );
        logic [31:0] data [];
        begin
            data = new [1];
            data[0] = wdata;
            BFM.enqueue_transaction(1'b0, 1'b1, addr, data, 1'b0, {1'b0, size}, 3'b0, 1'b0);
        end
    endtask

    // Create a burst read of size based on the burst type.
    // If INCR, burst size dependent on dynamic array size
    task enqueue_burst_read ( input logic [3:0] base_addr, input logic [1:0] size, input logic [2:0] burst, input logic [31:0] data [] );
        BFM.enqueue_transaction(1'b1, 1'b0, base_addr, data, 1'b0, {1'b0, size}, burst, 1'b1);
    endtask

    // Create a burst write of size based on the burst type.
    task enqueue_burst_write ( input logic [3:0] base_addr, input logic [1:0] size, input logic [2:0] burst, input logic [31:0] data [] );
        BFM.enqueue_transaction(1'b1, 1'b1, base_addr, data, 1'b0, {1'b0, size}, burst, 1'b1);
    endtask

    // Run n transactions, where a k-beat burst counts as k transactions.
    task execute_transactions (input int num_transactions);
        BFM.run_transactions(num_transactions);
    endtask

    // Finish the current transaction
    task finish_transactions();
        BFM.wait_done();
    endtask

    logic [31:0] data;
    logic [15:0] reg4,reg6;
    logic [7:0] reg8;

    logic in, out, ack, data0, data1;
    string test_string;

    assign in = (rx_packet == 1);
    assign out = (rx_packet == 2);
    assign ack = (rx_packet == 3);
    assign data0 = (rx_packet == 4);
    assign data1 = (rx_packet == 5);

    assign reg4 = {6'b0, tx_transfer_active, rx_transfer_active, 2'b0, data1, data0, ack, out, in, rx_data_ready};
    assign reg6 = {7'b0,tx_error,7'b0,rx_error};
    assign reg8 = {1'b0,buffer_occ};

    initial begin
        n_rst = 1;
        reset_model();
        reset_dut();

        test_string = "Writing to Writable Addresses";
        enqueue_write(4'h2, 2'b1, 32'h00BB);
        enqueue_write(4'hC,2'b1,32'h0000_0101);
        enqueue_read(4'hC,2'b1,32'h0);

        execute_transactions(3);

        finish_transactions();

        test_string = "Clear high";
        buffer_occ = 1;
        enqueue_write(4'hD,2'h0,32'h1);
        execute_transactions(1);
        finish_transactions();
        buffer_occ = 0;

        @(negedge clk);
        tx_transfer_active = 1;
        rx_error = 1;
        rx_packet = 3;
        buffer_occ = 7'd4;

        test_string = "Reading from Status Registers 0x4-0x8";
        enqueue_read(4'h4, 2'h2, 32'h10208);
        execute_transactions(1);
        finish_transactions();

        test_string = "Invalid Writes and Reads";
        enqueue_write(4'h5,2'h0,32'hBABA);
        enqueue_read(4'h8,2'h1,32'h0);

        execute_transactions(2);
        finish_transactions();

        $finish;
    end
endmodule

/* verilator coverage_on */
