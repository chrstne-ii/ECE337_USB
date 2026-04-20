`timescale 1ns / 10ps

module tb_ahb_subordinate ();
    localparam CLK_PERIOD = 10ns;

    logic clk, n_rst;
    logic hsel, hwrite, hresp, hready;
    logic [1:0] hsize, htrans;
    logic [3:0] haddr;
    logic [2:0] hburst;
    logic [31:0] hwdata, hrdata;

    // Clock Generation
    always #(CLK_PERIOD / 2.0) clk = ~clk;

    // Task for Single Write
    task write_single(input logic [3:0] addr, input logic [31:0] data, input logic [1:0] size);
    begin
        @(negedge clk);
        hsel   = 1;
        hwrite = 1;
        htrans = 2'b10; // NONSEQ
        hsize  = size;
        haddr  = addr;
        hwdata = data;
        
        // Wait for Data Phase to complete (sampled when hready is high)
        do begin @(posedge clk); end while (!hready);
        
        // Return to Idle
        @(negedge clk);
        hsel = 0;
        htrans = 2'b00; // IDLE
    end
    endtask

    // Task for Single Read
    task read_single(input logic [3:0] addr, input logic [1:0] size);
    begin
        @(negedge clk);
        hsel   = 1;
        hwrite = 0;
        htrans = 2'b10;
        hsize  = size;
        haddr  = addr;

        // Wait for subordinate to assert hready
        do begin @(posedge clk); end while (!hready);
        
        // Data is now valid on hrdata
        @(negedge clk);
        hsel = 0;
        htrans = 2'b00;
    end
    endtask

    // AHB Subordinate instantiation
    ahb_subordinate DUT (.*);

    initial begin
        clk = 0; n_rst = 0;
        hsel = 0; hwrite = 0; htrans = 0;
        
        // Reset sequence
        repeat(2) @(posedge clk);
        n_rst = 1;
        repeat(2) @(posedge clk);

        // 1. Basic Write/Read Test
        write_single(4'h0, 32'hAAAA_BBBB, 2'b10); // 4-byte write
        read_single(4'h0, 2'b10);                // 4-byte read
        
        // 2. Error Handling Test
        // Induce error by writing to illegal address or size
        write_single(4'hF, 32'hDEAD_BEEF, 2'b10); 
        // Check if hresp goes high (monitored by checker)

        $finish;
    end
endmodule