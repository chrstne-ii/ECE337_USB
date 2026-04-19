`timescale 1ns / 10ps

module sync #(parameter RST_VAL = 0) (
    input logic clk, n_rst, async_in,
    output logic sync_out
);
    logic flip1_out;

    always_ff @(posedge clk, negedge n_rst) begin
        if(!n_rst) begin
            flip1_out <= RST_VAL;
        end else begin
            flip1_out <= async_in;
        end
    end

    always_ff @(posedge clk, negedge n_rst) begin
        if(!n_rst) begin
            sync_out <= RST_VAL;
        end else begin
            sync_out <= flip1_out;
        end
    end
endmodule

