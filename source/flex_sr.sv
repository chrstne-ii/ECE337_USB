`timescale 1ns / 10ps

module flex_sr #(
    parameter SIZE = 8,
    parameter MSB_FIRST = 0
    parameter PRIORITY = 0
)(
    input logic clk,
    input logic n_rst,
    input logic shift_enable,
    input logic load_enable,
    input logic serial_in,
    input logic [SIZE-1:0] parallel_in,
    output logic serial_out,
    output logic [SIZE-1:0] parallel_out
);

    logic [SIZE-1:0] n_parallel;

    always_ff @(posedge clk, negedge n_rst) begin
        if(!n_rst) begin
            parallel_out <= '1;
        end
        else begin 
            parallel_out <= n_parallel;
        end
    end 

    always_comb begin
        n_parallel = parallel_out;
        if (PRIORITY) begin
            if (load_enable) begin
                n_parallel = parallel_in;
            end
            if (shift_enable) begin
                if(MSB_FIRST) begin
                    n_parallel = {parallel_out[SIZE-2:0], serial_in};
                end
                else begin
                    n_parallel = {serial_in, parallel_out[SIZE-1:1]};
                end
            end
        end
        else begin
            if (load_enable) begin
                n_parallel = parallel_in;
            end
            if (shift_enable) begin
                if(MSB_FIRST) begin
                    n_parallel = {parallel_out[SIZE-2:0], serial_in};
                end
                else begin
                    n_parallel = {serial_in, parallel_out[SIZE-1:1]};
                end
            end
        end
    end

    always_comb begin
        if (MSB_FIRST) begin
            serial_out = parallel_out[SIZE-1];
        end
        else begin
            serial_out = parallel_out[0];
        end
    end

endmodule

