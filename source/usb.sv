`timescale 1ns / 10ps

module usb #(
    // parameters
) (
    input logic clk, n_rst,
    input logic dp_in, dm_in,
    input logic hsel, hwrite,
    input logic [1:0] htrans, hsize,
    input logic [2:0] hburst,
    input logic [3:0] haddr,
    input logic [31:0] hwdata,
    output logic dp_out, dm_out, d_mode,
    output logic hresp, hready,
    output logic [31:0] hrdata
);
    logic rx_data_ready, rx_transfer_active, rx_error, flush, store_rx_packet_data;
    logic get_rx_data, store_tx_data, clear, get_tx_packet_data, tx_transfer_active, tx_error;
    logic [2:0] rx_packet;
    logic [3:0] tx_packet;
    logic [6:0] buffer_occ;
    logic [7:0] rx_packet_data, rx_data, tx_data, tx_packet_data;

    ahb_subordinate sub(
        .clk(clk), .n_rst(n_rst),
        .hsel(hsel), .hwrite(hwrite),
        .rx_transfer_active(rx_transfer_active), 
        .rx_data_ready(rx_data_ready),
        .rx_error(rx_error),
        .rx_packet(rx_packet),
        .rx_data(rx_data),
        .tx_transfer_active(tx_transfer_active),
        .tx_error(tx_error),
        .hsize(hsize), .hburst(hburst),
        .haddr(haddr), .hwdata(hwdata),
        .buffer_occ(buffer_occ),
        .d_mode(d_mode),
        .hresp(hresp), .hready(hready),
        .get_rx_data(get_rx_data), 
        .store_tx_data(store_tx_data),
        .clear(clear),
        .tx_packet(tx_packet),
        .tx_data(tx_data),
        .hrdata(hrdata)
    );

    usb_rx rx(
        .clk(clk), .n_rst(n_rst),
        .dp_in(dp_in), .dm_in(dm_in),
        .buffer_occ(buffer_occ),
        .rx_packet(rx_packet),
        .rx_packet_data(rx_packet_data),
        .rx_data_ready(rx_data_ready), 
        .rx_transfer_active(rx_transfer_active),
        .rx_error(rx_error),
        .store_rx_packet_data(store_rx_packet_data),
        .flush(flush)
    );

    usb_tx tx(
        .clk(clk), .n_rst(n_rst),
        .tx_packet(tx_packet),
        .buffer_occupancy(buffer_occ),
        .tx_packet_data(tx_packet_data),
        .tx_transfer_active(tx_transfer_active),
        .tx_error(tx_error),
        .get_tx_packet_data(get_tx_packet_data),
        .dp_out(dp_out), .dm_out(dm_out)
    );

    data_buffer buff(
        .clk(clk), .n_rst(n_rst),
        .flush(flush), .clear(clear),
        .store_rx_packet_data(store_rx_packet_data),
        .store_tx_data(store_tx_data),
        .get_rx_data(get_rx_data),
        .get_tx_packet_data(get_tx_packet_data),
        .tx_data(tx_data), .rx_packet_data(rx_packet_data),
        .buffer_occupancy(buffer_occ),
        .rx_data(rx_data), .tx_packet_data(tx_packet_data)
    );

endmodule

