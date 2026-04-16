`timescale 1ns / 10ps

localparam DATA0 =   4'b0011;
localparam DATA1 =   4'b1011;
localparam ACK   =   4'b0010;
localparam NAK   =   4'b1010;
localparam STALL =   4'b1110;

module usb_tx #(
    // parameters
) (
    input logic clk, n_rst,
    input logic [3:0] tx_packet,
    input logic [6:0] buffer_occupancy,
    input logic [7:0] tx_packet_data,
    output logic tx_transfer_active, tx_error, get_tx_packet_data, dp_out, dm_out
);

    logic next_DP_OUT, next_DM_OUT;
    logic [7:0] pid_packet, packet;
    logic [4:0] clk_count;
    logic bit_clk, enable_timer, end_packet, first, clear, rollover_25, rollover_8, serial_out;
    


    flex_counter #(.SIZE(5)) data_period(.clk(clk), .n_rst(n_rst), .clear(clear), .rollover_val(4'd25), .count_out(clk_count), .rollover_flag(rollover_25));
    

endmodule

