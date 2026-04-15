`timescale 1ns / 10ps

module ahb_subordinate #(
) (
    input logic clk, n_rst,
    input logic hsel, hwrite;
    input logic rx_transfer_active, rx_data_ready, rx_error;
    input logic tx_transfer_active, tx_error;
    input logic [1:0] hsize;
    input logic [2:0] hburst, rx_packet;
    input logic [3:0] haddr;
    input logic [6:0] buffer_occ;
    input logic [7:0] rx_data;
    input logic [31:0] hwdata;

    output logic d_mode;
    output logic hresp, hready;
    output logic get_rx_data, store_tx_data, clear;
    output logic [2:0]tx_packet;
    output logic [7:0] tx_data;
    output logic [31:0] hrdata;
);
    logic [7:0] reg8, regC, regD;
    logic [15:0] reg4, reg6;
    logic [31:0] buffer, next_hrdata, cur_hrdata;
    logic [47:0] next_reg, register;
    logic [3:0] prev_haddr;
    logic [1:0] prev_hsize;

    logic hwready, hrready, hr_avail;
    logic next_hresp, prev_hresp, prev_hresp_high, cur_hresp, hresp_high;
    logic prev_hwrite, prev_clear;

    logic in, out, ack, data0, data1;

    assign hrdata = cur_hrdata;
    assign dmode = !rx_transfer_active && tx_transfer_active;
    assign hresp = cur_hresp;
    assign hready = hrready && hwready && !hresp_high;

    assign reg6 = {7'b0,tx_error,7'b0,rx_error};
    assign reg8 = {0,buffer_occ};
    
    always_ff @ (posedge clk, negedge n_rst) begin
        if(!n_rst) begin
            cur_hrdata <= '0;
            register <= '0;
            prev_hsize <= '0;
            prev_haddr <= '0;
            cur_hresp <= '0;
            prev_hresp <= '0;
            prev_hresp_high <= '0;
            prev_hwrite <= '0;
            prev_clear <= 0;
        end

        cur_hrdata <= next_hrdata;
        register <= next_reg;
        prev_hsize <= hsize;
        prev_haddr <= haddr;
        cur_hresp <= next_hresp;
        prev_hresp <= cur_hresp;
        prev_hresp_high <= hresp_high;
        prev_hwrite <= hwrite;
        prev_clear <= clear;
    end

    always_comb begin: address_checker
        next_hresp = 0;
        hresp_high = 0;

        if(prev_hresp_high) begin
            next_hresp = 1;
        end

        else if(hsize > 2) begin
            next_hresp = 1;
            hresp_high = 1;
        end

        else if(haddr > 4'h8 && haddr < 4'hC) begin
            next_hresp = 1;
            hresp_high = 1;
        end

        else if(hwrite) begin

            if((haddr >= 4'h4 && haddr < 4'hC) || haddr > 4'hD) begin
                next_hresp = 1;
                hresp_high = 1;
            end

            else if((hadd == 4'hC || haddr == 4'hD) && hsize > 0) begin
                next_hresp = 1;
                hresp_high = 1;
            end

        end

        else if(!hwrite) begin
            
            if(haddr == 4'h4 && hsize > 1) begin
                next_hresp = 1
                hresp_high = 1
            end

            if(haddr == 4'h5 && hsize > 0) begin
                next_hresp = 1
                hresp_high = 1
            end

            if(haddr == 4'h6 && hsize > 1) begin
                next_hresp = 1
                hresp_high = 1
            end

            if(haddr == 4'h7 && hsize > 0) begin
                next_hresp = 1
                hresp_high = 1
            end

            if(haddr == 4'h8 && hsize > 0) begin
                next_hresp = 1
                hresp_high = 1
            end

            if((haddr == 4'hC || haddr == 4'hD) && hsize > 0) begin
                next_hresp = 1
                hresp_high = 1
            end

        end
    end

    always_comb begin: comb_reg
        next_reg = {regD,regC,buffer};
        next_hrdata = hrdata;

        //RAW 
        if(!hwrite && prev_hwrite && haddr == prev_haddr && !hresp && !prev_hresp && hsel) begin
            next_hrdata = hwdata;
        end
        //end of RAW

        else if(haddr < 4'h4 && hr_avail) begin
            next_hrdata = buffer;
        end

        else if(!hwrite && !hresp && !prev_hresp && hready && hsel) begin
            casez(haddr)
                4'h4: begin
                    next_hrdata = {16'b0, reg4[15:0]};
                    if(prev_hsze == 0)begin
                        next_hrdata = {24'b0, reg4[7:0]};
                    end
                end
                4'h6: begin
                    next_hrdata = {16'b0, reg6[15:0]};
                    if(prev_hsze == 0)begin
                        next_hrdata = {24'b0, reg6[7:0]};
                    end
                end
                4'h8: begin
                    next_hrdata = {24'b0, reg8};
                end
                4'hC: begin
                    next_hrdata = {24'b0, regC};
                end
                4'hD: begin
                    next_hrdata = {24'b0, regD};
                end
                default: next_hrdata = hrdata;
            endcase
        end
    end

    always_comb begin: reg4
        in = (rx_packet == 1);
        out = (rx_packet == 2);
        ack = (rx_packet == 3);
        data0 = (rx_packet == 4);
        data1 = (rx_packet == 5);

        reg4 = {6'b0, tx_transfer_active, tx_transfer_active, 2'b0, data1, data0, ack, out, in, rx_data_ready};
    end

    always_comb begin: regC
        tx_packet = '0;
        regC = '0;

        if(prev_hwrite == 1 && !prev_hresp && !hresp && hready && hsel && prev_haddr == 4'hC) begin
            regC = hwdata[7:0];
            tx_packet = hwdata[2:0];
            if(hwdata[7:3] != 0) begin
                regC = '0;
                tx_packet = '0;
            end
        end
    end

    always_comb begin: regD
        regD = register[47:40];
        clear = prev_clear;
        
        if(prev_hwrite == 1 && !prev_hresp && !hresp && hready && hsel && prev_haddr == 4'hD) begin
            regD = hwdata[7:0];
            if(hwdata == 1) begin
                clear = 1;
            end
        end

        if(buffer_occ == 0 && prev_clear == 1) begin
            regD[0] = '0;
            clear = 0;
        end
    end
endmodule

