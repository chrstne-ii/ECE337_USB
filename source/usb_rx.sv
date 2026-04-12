`timescale 1ns / 10ps

module usb_rx (
    input logic clk, n_rst,
    input logic dp_in, dm_in,
    output logic [2:0] rx_packet,
    output logic [7:0] rx_packet_data,
    output logic rx_data_ready, rx_transfer_active, rx_error, store_rx_packet_data, flush
);



endmodule

