`timescale 1ns / 10ps

module flex_counter #(
    parameter SIZE = 8
) (
    input logic clk,
    input logic n_rst,
    input logic clear,
    input logic count_enable,
    input logic [SIZE-1:0] rollover_val,
    output logic [SIZE-1:0] count_out,
    output logic rollover_flag
);

    logic [SIZE-1:0] next_out;
    logic next_flag; 

    always_ff @(posedge clk, negedge n_rst) begin : sequential_logic
        if (!n_rst) begin
            count_out <= '0;
            rollover_flag <= 0;
        end
        else begin
            rollover_flag <= next_flag;
            count_out <= next_out;
        end
    end

    always_comb begin : next_state_combinational
        next_flag = 0;
        //rollover_flag = 1'b0;
        next_out = count_out;
        if (clear) begin
            next_flag = 1'b0;
            next_out = '0;
        end
        else if (count_enable) begin
            if (count_out >= rollover_val) begin
                next_out = 1;
                //next_flag = 1'b1;
                //rollover_flag = 1'b1;
            end
            else begin
                next_out = next_out + 1;
            end
        end 
        if ((!clear & count_enable & (count_out == (rollover_val - 1))) | !clear & !count_enable & (count_out == rollover_val)) begin
            next_flag = 1'b1;
        end
    end

endmodule

