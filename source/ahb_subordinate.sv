`timescale 1ns / 10ps

module ahb_subordinate #(
) (
    input logic clk, n_rst,
    input logic hsel, hwrite,
    input logic rx_transfer_active, rx_data_ready, rx_error,
    input logic tx_transfer_active, tx_error,
    input logic [1:0] hsize,
    input logic [2:0] rx_packet,
    input logic [3:0] haddr,
    input logic [6:0] buffer_occ,
    input logic [7:0] rx_data,
    input logic [31:0] hwdata,

    output logic d_mode,
    output logic hresp, hready,
    output logic get_rx_data, store_tx_data, clear,
    output logic [3:0] tx_packet,
    output logic [7:0] tx_data,
    output logic [31:0] hrdata
);

    logic [7:0] reg8, regC, regD;
    logic [15:0] reg4, reg6;
    logic [31:0] buffer, next_hrdata;
    logic [15:0] next_reg, register;
    logic [3:0] prev_haddr, size, prev_size;
    logic [1:0] prev_hsize;

    logic hwready, hrready, hr_avail;
    logic prev_hresp, prev_hresp_high, hresp_high;
    logic prev_hwrite, prev_clear;

    logic in, out, ack, data0, data1;

    hready_read_fsm read_fsm(.*);
    hready_write_fsm write_fsm(.*);

    assign d_mode = !rx_transfer_active && tx_transfer_active;
    assign hready = hrready && hwready && !hresp_high;

    assign reg6 = {7'b0,tx_error,7'b0,rx_error};
    assign reg8 = {1'b0,buffer_occ};
    
    always_ff @ (posedge clk, negedge n_rst) begin
        if(!n_rst) begin
            hrdata <= '0;
            register <= '0;
            prev_hsize <= '0;
            prev_haddr <= '0;
            prev_hresp <= '0;
            prev_hresp_high <= '0;
            prev_hwrite <= '0;
            prev_clear <= 0;
        end
        else begin
            hrdata <= next_hrdata;
            register <= next_reg;
            prev_hsize <= hsize;
            prev_haddr <= haddr;
            prev_hresp <= hresp;
            prev_hresp_high <= hresp_high;
            prev_hwrite <= hwrite;
            prev_clear <= clear;
        end
    end

    always_comb begin: address_checker
        hresp = 0;
        hresp_high = 0;
        size = (4'b1 >> hsize) - 1;

        if(prev_hresp_high) begin
            hresp = 1;
            hresp_high = 0;
        end

        else if(hsize == 2'h3) begin
            hresp = 1;
            hresp_high = 1;
        end

        else if(hsel && !hresp_high) begin
            if(haddr > 4'h8 && haddr < 4'hC) begin
                hresp = 1;
                hresp_high = 1;
            end

            else if(hwrite) begin

                if((haddr >= 4'h4 && haddr < 4'hC) || haddr > 4'hD) begin
                    hresp = 1;
                    hresp_high = 1;
                end

                else if(haddr < 4'h4 && (haddr + size) > 4'h4) begin
                    hresp = 1;
                    hresp_high = 1;
                end
                else if((haddr == 4'hC && hsize > 1) || (haddr == 4'hD && hsize > 0)) begin
                    hresp = 1;
                    hresp_high = 1;
                end

            end

            else if(!hwrite) begin
                
                if(haddr < 4 && {3'b0,size} > buffer_occ) begin
                    hresp = 1;
                    hresp_high = 1;
                end
            
                if((haddr == 4'h7 || haddr == 4'hC) && hsize > 1) begin
                    hresp = 1;
                    hresp_high = 1;
                end

                if((haddr == 4'h8 || haddr == 4'hD) && hsize > 0) begin
                    hresp = 1;
                    hresp_high = 1;
                end
            end
        end
    end

    always_comb begin: comb_reg
        next_reg = {regD,regC,buffer};
        next_hrdata = hrdata;
        prev_size = 4'b1 >> prev_hsize;
        //RAW 
        if(!hwrite && prev_hwrite && !hresp && hsel && prev_haddr >= 4) begin
            if((prev_haddr + prev_size - 1) >= haddr) begin  //prev_haddr is guarenteed to be >= C
                if(prev_haddr == 4'hC && prev_hsize == 0) begin //write to only 0xC

                    if(hsize == 0)begin // 0xC
                        next_hrdata = {24'b0,hwdata[7:0]};
                    end
                    if(hsize == 1)begin // 0xC, 0xD
                        next_hrdata = {8'b0,regD,hwdata[7:0]};
                    end
                end
                else if(prev_haddr == 4'hC && prev_hsize == 1) begin// write to 0xC and 0xD
                    if(hsize == 0 && haddr == 4'hC) begin//reading from 0xC
                        next_hrdata = {24'b0,hwdata[7:0]};
                    end
                    else if(hsize == 1 && haddr == 4'hC) begin//reading from 0xC, 0xD
                        next_hrdata = {16'b0,hwdata[15:0]};
                    end
                    else if(haddr == 4'hD) begin//reading from 0xD
                        next_hrdata = {24'b0,hwdata[15:8]};
                    end
                end
                else if(prev_haddr == 4'hD && haddr == 4'hD) begin// write to only 0xD
                    next_hrdata = {24'b0,hwdata[7:0]};
                end
                else begin
                    next_hrdata = {24'b0,regD};
                end
            end
        end
        //end of RAW

        else if(haddr == 4'h0 && hr_avail && hready) begin
            next_hrdata = buffer;
        end

        else if(!hwrite && !hresp && !prev_hresp && hready && hsel) begin
            casez(haddr)
                4'h1: begin
                    if(hsize == 2'h0 && hr_avail) begin
                        next_hrdata = buffer;
                    end
                    else if(hsize == 2'h1 && hr_avail) begin
                        next_hrdata = buffer;
                    end
                    else if(hsize == 2'h2 && hr_avail) begin
                        next_hrdata = {reg4[7:0],buffer[23:0]};
                    end
                end
                4'h2: begin
                    if(hsize == 2'h0 && hr_avail) begin
                        next_hrdata = buffer;
                    end
                    else if(hsize == 2'h1 && hr_avail) begin
                        next_hrdata = buffer;
                    end
                    else if(hsize == 2'h2 && hr_avail) begin
                        next_hrdata = {reg4,buffer[15:0]};
                    end
                end
                4'h3: begin
                    if(hsize == 2'h0 && hr_avail) begin
                        next_hrdata = buffer;
                    end
                    else if(hsize == 2'h1 && hr_avail) begin
                        next_hrdata = {reg4[7:0],reg4,buffer[7:0]};
                    end
                    else if(hsize == 2'h2 && hr_avail) begin
                        next_hrdata = {reg6[7:0],reg4,buffer[7:0]};
                    end
                end
                4'h4: begin
                    next_hrdata = {16'b0, reg4[15:0]};
                    if(hsize == 0)begin
                        next_hrdata = {24'b0, reg4[7:0]};
                    end
                    else if(hsize == 2'h1) begin
                        next_hrdata = {16'b0, reg4};
                    end
                    else if(hsize == 2'h2) begin
                        next_hrdata = {reg6, reg4};
                    end
                end
                4'h5: begin
                    if(hsize == 2'h0) begin
                        next_hrdata = {24'b0, reg4[15:8]};
                    end
                    else if(hsize == 2'h1) begin
                        next_hrdata = {16'b0, reg6[7:0], reg4[15:8]};
                    end
                    else if(hsize == 2'h2) begin
                        next_hrdata = {reg8, reg6, reg4[15:8]};
                    end
                end
                4'h6: begin
                    next_hrdata = {16'b0, reg6[15:0]};
                    if(hsize == 0)begin
                        next_hrdata = {24'b0, reg6[7:0]};
                    end
                    else if(hsize == 2'h1) begin
                        next_hrdata = {16'b0, reg6};
                    end
                end
                4'h7: begin
                    if(hsize == 2'h0) begin
                        next_hrdata = {24'b0, reg6[15:8]};
                    end
                    else if(hsize == 2'h1) begin
                        next_hrdata = {16'b0, reg8, reg6[15:8]};
                    end
                end
                4'h8: begin
                    next_hrdata = {24'b0, reg8};
                end
                4'hC: begin
                    next_hrdata = {24'b0, regC};
                    if(hsize == 2'b1) begin
                        next_hrdata = {16'b0, regD, regC};
                    end
                end
                4'hD: begin
                    next_hrdata = {24'b0, regD};
                end
                default: next_hrdata = hrdata;
            endcase
        end
    end

    always_comb begin: reg_4
        in = (rx_packet == 1);
        out = (rx_packet == 2);
        ack = (rx_packet == 3);
        data0 = (rx_packet == 4);
        data1 = (rx_packet == 5);

        reg4 = {6'b0, tx_transfer_active, rx_transfer_active, 2'b0, data1, data0, ack, out, in, rx_data_ready};
    end

    always_comb begin: reg_C
        tx_packet = '0;
        regC = '0;

        if(prev_hwrite == 1 && !prev_hresp && !hresp && hready && hsel && prev_haddr == 4'hC) begin
            regC = hwdata[7:0];
            if(hwdata[2:0] == 1) begin
                tx_packet = 4'b0011;
            end
            if(hwdata[2:0] == 2) begin
                tx_packet = 4'b1011;
            end
            if(hwdata[2:0] == 3) begin
                tx_packet = 4'b0010;
            end
            if(hwdata[2:0] == 4) begin
                tx_packet = 4'b1010;
            end
            if(hwdata[2:0] == 5) begin
                tx_packet = 4'b1110;
            end
            if(hwdata[7:3] != 0) begin
                regC = '0;
                tx_packet = '0;
            end
        end
    end

    always_comb begin: reg_D
        regD = register[7:0];
        clear = prev_clear;
        
        if(prev_hwrite == 1 && !hresp && !hresp && hready && hsel) begin
            if(prev_haddr == 4'hD) begin
                regD = hwdata[7:0];
                if(hwdata[7:0] == 1) begin
                    clear = 1;
                end
            end
            else if(prev_haddr == 4'hC && prev_hsize >= 1) begin
                regD = hwdata[15:8];
                if(hwdata[15:8] == 1) begin
                    clear = 1;
                end
            end
        end

        if(buffer_occ == 0 && prev_clear == 1) begin
            regD[0] = '0;
            clear = 0;
        end
    end
endmodule

