`timescale 1ns / 10ps

module usb_tx #(
    // parameters
) (
    input logic clk, n_rst,
    input logic [3:0] tx_packet,
    input logic [6:0] buffer_occupancy,
    input logic [7:0] tx_packet_data,
    output logic tx_transfer_active, tx_error, get_tx_packet_data, dp_out, dm_out
);



endmodule

