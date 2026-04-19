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

    logic next_DP_OUT, next_DM_OUT;
    logic [7:0] pid_packet, packet;
    logic [4:0] clk_count;
    logic bit_clk, enable_timer, end_packet, first, clear, rollover_25, rollover_8, serial_out, load_enable, idle;

    logic [3:0] invert;
    logic [7:0] non_flipped;
    integer i;
    integer index;
    
    always_comb begin : PID_PACKET_LOGIC
        invert = ~tx_packet;
        non_flipped = {invert, tx_packet};
        index = 7;
        for (i = 0; i < 8; i++) begin
            pid_packet[7 - i] = non_flipped[i];
        end
    end
    
    tx_fsm fsm(.*);

    flex_counter #(.SIZE(5)) data_period(.clk(clk), .n_rst(n_rst), .clear(clear), .count_enable(enable_timer), .rollover_val(5'd25), .count_out(clk_count), .rollover_flag(rollover_25));

    always_comb begin : BIT_CLK_LOGIC
        bit_clk = 1'b0;
        if (rollover_25 || clk_count == 8 || clk_count == 16) begin
            bit_clk = 1'b1;
        end
    end

    flex_counter #(.SIZE(4)) byte_counter(.clk(clk), .n_rst(n_rst), .clear(clear), .count_enable(bit_clk), .rollover_val(4'd8), .rollover_flag(rollover_8));

    assign load_enable = rollover_8 | first;

    flex_sr #(.SIZE(8), .MSB_FIRST(1)) load_sr(.clk(clk), .n_rst(n_rst), .shift_enable(bit_clk), 
              .load_enable(load_enable), .serial_in(1'b0), .parallel_in(packet), .serial_out(serial_out));

    always_comb begin : NEXT_DP_LOGIC
        if (end_packet) begin
            next_DM_OUT = 1'b0;
            next_DP_OUT = 1'b0;
        end else if (idle) begin
            next_DM_OUT = 1'b0;
            next_DP_OUT = 1'b1;
        end else if (serial_out) begin
            next_DP_OUT = dp_out;
            next_DM_OUT = dm_out;
        end
        else begin
            next_DM_OUT = !dm_out;
            next_DP_OUT = !dp_out;
        end
    end

    always_ff @(posedge clk, negedge n_rst) begin : OUTPUT_ENCODE
        if (!n_rst) begin
            dp_out <= 1'b1;
            dm_out <= 1'b0;
        end else if (bit_clk) begin
            dp_out <= next_DP_OUT;
            dm_out <= next_DM_OUT;
        end
    end
    

endmodule

