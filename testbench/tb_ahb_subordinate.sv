`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_ahb_subordinate ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;
    logic hsel, hwrite, d_mode, hresp, hready;
    logic [1:0] hsize, htrans;
    logic [3:0] haddr;
    logic [2:0] hburst;
    logic [31:0] hwdata, hrdata;

    // clockgen
    always begin
        clk = 0;
        #(CLK_PERIOD / 2.0);
        clk = 1;
        #(CLK_PERIOD / 2.0);
    end

    task reset_dut;
    begin
        n_rst = 0;
        @(posedge clk);
        @(posedge clk);
        @(negedge clk);
        n_rst = 1;
        @(posedge clk);
        @(posedge clk);
    end
    endtask

    task write;
    input logic [3:0] addr;
    input logic [31:0] data;
    input logic [1:0] size;
    input logic [2:0] burst;
    input logic [1:0] mode;
    begin
        @(negedge clk);
        hsel = 1;
        hwrite = 1;
        hsize = size;
        haddr = addr;
        hwdata = data;
        hburst = burst;

        @(posedge clk);
        if(hsize == 2'b00) begin
            @(posedge clk);
            if(hready) begin
                hsel = 0;
            end
            
        end
        else if(hsize == 2'b01) begin
            
        end
        else if(hsize == 2'b10) begin
            
        end
        else begin

        end
    end
    endtask

    task read(addr);
    input logic [3:0] addr;
    input logic [31:0] data;
    input logic [1:0] size;
    input logic [2:0] burst;
    input logic [1:0] mode;
    begin
        @(negedge clk);
        hsel = 1;
        hwrite = 1;
        hsize = size;
        haddr = addr;
        hwdata = data;
        hburst = burst;

        @(posedge clk);
        if(hsize == 2'b00) begin
            
        end
        else if(hsize == 2'b01) begin
            
        end
        else if(hsize == 2'b10) begin
            
        end
        else begin

        end
    end
    endtask


    ahb_subordinate #() DUT (.*);

    initial begin
        n_rst = 1;

        reset_dut;
        

        $finish;
    end
endmodule

/* verilator coverage_on */

