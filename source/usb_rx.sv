`timescale 1ns / 10ps

module usb_rx (
    input logic clk, n_rst,
    input logic dp_in, dm_in,
    output logic [2:0] rx_packet,
    output logic [7:0] rx_packet_data,
    output logic rx_data_ready, rx_transfer_active, rx_error, store_rx_packet_data, flush
);
    logic synced_p, synced_m, signal;

    sync sync_p(.clk(clk), .n_rst(n_rst), .async_in(dp_in), .sync_out(synced_p));
    sync sync_m(.clk(clk), .n_rst(n_rst), .async_in(dm_in), .sync_out(synced_m));

    always_ff @(posedge clk, negedge n_rst) begin
        if(!n_rst) begin
            signal <= '0;
        end else begin
            signal <= synced_p;
        end
    end

    flex_sr #(.SIZE(8), .MSB_FIRST(0)) 8bit(.clk(clk), .n_rst(n_rst));


endmodule

