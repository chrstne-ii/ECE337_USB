`timescale 1ns / 10ps

module data_buffer #(
    // parameters
) (
    input logic clk, n_rst, flush, clear, store_rx_packet_data, store_tx_data, get_rx_data, get_tx_packet_data,
    input logic [7:0] tx_data, rx_packet_data,
    output logic [6:0] buffer_occupancy,
    output logic [7:0] rx_data, tx_packet_data
);



endmodule

