`timescale 1ns / 10ps

module ahb_subordinate #(
) (
    input logic clk, n_rst,
    input logic hsel, hwrite, [1:0] hsize, [3:0] haddr, [31:0] hwdata, [2:0] hburst
    output logic d_mode, [31:0] hrdata, hresp, hready
);



endmodule

