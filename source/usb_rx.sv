`timescale 1ns / 10ps

module usb_rx (
    input logic clk, n_rst,
    input logic dp_in, dm_in,
    input logic [6:0] buffer_occ,
    output logic [2:0] rx_packet,
    output logic [7:0] rx_packet_data,
    output logic rx_data_ready, rx_transfer_active, rx_error, store_rx_packet_data, flush
);
    logic synced_p, synced_m, signal, new_packet, flag4, first_in, next_in, first_bit, pserial_in, mserial_in, samp_flag;
    logic enable_shift, byte_shift, bits_shift, byte_done, bits_done;
    logic [2:0] pbits, mbits;
    logic [4:0] samp_count;
    logic [7:0] byte_in;

    sync sync_p(.clk(clk), .n_rst(n_rst), .async_in(dp_in), .sync_out(synced_p));
    sync sync_m(.clk(clk), .n_rst(n_rst), .async_in(dm_in), .sync_out(synced_m));

    always_ff @(posedge clk, negedge n_rst) begin
        if(!n_rst) begin
            signal <= '0;
            first_in <= '0;
            next_in <= '0;
            first_bit <= '0;
        end else begin
            signal <= synced_p;
            if(enable_shift) begin
                first_in <= synced_p;
                next_in <= synced_m;
            end
            if (new_packet) first_bit <= 1'b0;
            if (flag4 && !first_bit) first_bit <= 1'b1;
        end
    end

    always_comb begin
        new_packet = !synced_p && signal && !rx_transfer_active;
        if(flag4 && !first_bit) begin
            pserial_in = '0;
        end else begin
            pserial_in = (first_in == synced_p) ? 1 : 0;
        end
        mserial_in = (next_in == synced_m) ? 1 : 0;
        enable_shift = ((flag4 && !first_bit) || (samp_flag) || (samp_count == 5'd8) || (samp_count == 5'd17));
    end

    flex_counter #(.SIZE(2)) countTo2(
        .clk(clk), .n_rst(n_rst),
        .clear(new_packet),
        .count_enable(!flag4),
        .rollover_val(2'd2),
        /* verilator lint_off PINCONNECTEMPTY */
        .count_out(),
        /* verilator lint_on PINCONNECTEMPTY */
        .rollover_flag(flag4)
    );
    flex_counter #(.SIZE(5)) sample(
        .clk(clk), .n_rst(n_rst),
        .clear(new_packet),
        .count_enable(flag4),
        .rollover_val(5'd25),
        .count_out(samp_count),
        .rollover_flag(samp_flag)
    );

    flex_sr #(.SIZE(8), .MSB_FIRST(0)) byteShifter(
        .clk(clk), .n_rst(n_rst),
        .shift_enable(enable_shift && byte_shift),
        .load_enable('0),
        .serial_in(pserial_in),
        .parallel_in('0),
        /* verilator lint_off PINCONNECTEMPTY */
        .serial_out(),
        /* verilator lint_on PINCONNECTEMPTY */
        .parallel_out(byte_in)
    );
    flex_counter #(.SIZE(4)) byteCounter(
        .clk(clk), .n_rst(n_rst),
        .clear(new_packet || byte_done),
        .count_enable(enable_shift && byte_shift),
        .rollover_val(4'd8),
        /* verilator lint_off PINCONNECTEMPTY */
        .count_out(),
        /* verilator lint_on PINCONNECTEMPTY */
        .rollover_flag(byte_done)
    );
    
    flex_sr #(.SIZE(3), .MSB_FIRST(0)) pbitShifter(
        .clk(clk), .n_rst(n_rst),
        .shift_enable(enable_shift && bits_shift),
        .load_enable('0),
        .serial_in(synced_p),
        .parallel_in('0),
        /* verilator lint_off PINCONNECTEMPTY */
        .serial_out(),
        /* verilator lint_on PINCONNECTEMPTY */
        .parallel_out(pbits)
    );
    flex_sr #(.SIZE(3), .MSB_FIRST(0)) mbitShifter(
        .clk(clk), .n_rst(n_rst),
        .shift_enable(enable_shift && bits_shift),
        .load_enable('0),
        .serial_in(synced_m),
        .parallel_in('0),
        /* verilator lint_off PINCONNECTEMPTY */
        .serial_out(),
        /* verilator lint_on PINCONNECTEMPTY */
        .parallel_out(mbits)
    );
    flex_counter #(.SIZE(2)) countTo3(
        .clk(clk), .n_rst(n_rst),
        .clear(new_packet || bits_done),
        .count_enable(enable_shift && bits_shift),
        .rollover_val(2'd3),
        /* verilator lint_off PINCONNECTEMPTY */
        .count_out(),
        /* verilator lint_on PINCONNECTEMPTY */
        .rollover_flag(bits_done)
    );

    rx_fsm rcu(
        .clk(clk), .n_rst(n_rst),
        .new_packet(new_packet),
        .byte_done(byte_done),
        .bits_done(bits_done),
        .pbits(pbits), .mbits(mbits),
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

endmodule

