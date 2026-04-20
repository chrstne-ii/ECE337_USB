`timescale 1ns / 10ps

module hready_read_fsm #(
) (
    input logic clk, n_rst,
    input logic hresp, hwrite, hsel, hready,
    input logic [3:0] haddr,
    input logic [1:0] hsize,
    input logic [7:0] rx_data,
    output logic hrready, get_rx_data, hr_avail,
    output logic [31:0] buffer
);

    typedef enum logic [4:0] {IDLE, FIRST_S4, STORE_FIRST_S4, SEC_S4, STORE_SEC_S4, THIRD_S4, STORE_THIRD_S4, FOURTH_S4, STORE_FOURTH_S4, HR_ACC,FIRST_S1,STORE_FIRST_S1,
    FIRST_S3, STORE_FIRST_S3, SEC_S3, STORE_SEC_S3, THIRD_S3, STORE_THIRD_S3, FIRST_S2, STORE_FIRST_S2, SEC_S2, STORE_SEC_S2} state_t;

    state_t state, next_state;
    logic [31:0] next_buffer;

    always_ff @(posedge clk, negedge n_rst) begin
        if (!n_rst) begin
            state <= IDLE;
            buffer <= '0;
        end else begin
            state <= next_state;
            buffer <= next_buffer;
        end
    end

    always_comb begin
        next_state = state;
        get_rx_data = 0;
        hrready = 1;
        hr_avail = 0;
        next_buffer = buffer;
        casez(state)

            IDLE: begin
                get_rx_data = 0;
                hrready = 1;
                hr_avail = 0;
                if(haddr==4'h0 && hsize == 2 && !hresp && !hwrite && hsel && hready) begin
                    next_state = FIRST_S4;
                end 
                if(haddr==4'h1 && hsize == 2 && !hresp && !hwrite && hsel && hready) begin
                    next_state = FIRST_S3;
                end 
                if(haddr==4'h2 || hsize == 1 && !hresp && !hwrite && hsel && hready) begin
                    next_state = FIRST_S2;
                end 
                else if((haddr<4'h4 && hsize == 0 || haddr == 4'h3) && !hresp && !hwrite && hsel && hready)begin
                    next_state = FIRST_S1;
                end
                else begin
                    next_state = IDLE;
                end
            end
            FIRST_S1: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_FIRST_S1;
            end
            STORE_FIRST_S1: begin
                get_rx_data = 0;
                hrready = 0;
                next_buffer = {24'b0,rx_data};
                next_state = HR_ACC;
            end
            FIRST_S4: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_FIRST_S4;
            end
            STORE_FIRST_S4: begin
                get_rx_data = 0;
                hrready = 0;
                next_buffer = {24'b0,rx_data};
                next_state = SEC_S4;
            end
            SEC_S4: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_SEC_S4;
            end
            STORE_SEC_S4: begin
                next_state = THIRD_S4;
                get_rx_data = 0;
                hrready = 0;
                next_buffer = {16'b0,rx_data,next_buffer[7:0]};
            end
            THIRD_S4: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_THIRD_S4;
            end
            STORE_THIRD_S4: begin
                get_rx_data = 0;
                hrready = 0;
                next_buffer = {8'b0,rx_data,next_buffer[15:0]};
                next_state = FOURTH_S4;
            end
            FOURTH_S4: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_FOURTH_S4;
            end
            STORE_FOURTH_S4: begin
                get_rx_data = 0;
                hrready = 0;
                next_buffer[31:24] = rx_data;
                next_state = HR_ACC;
            end
            FIRST_S3: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_FIRST_S3;
            end
            STORE_FIRST_S3: begin
                get_rx_data = 0;
                hrready = 0;
                next_buffer = {24'b0,rx_data};
                next_state = SEC_S3;
            end
            SEC_S3: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_SEC_S3;
            end
            STORE_SEC_S3: begin
                next_state = THIRD_S3;
                get_rx_data = 0;
                hrready = 0;
                next_buffer = {16'b0,rx_data,next_buffer[7:0]};
            end
            THIRD_S3: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_THIRD_S3;
            end
            STORE_THIRD_S3: begin
                get_rx_data = 0;
                hrready = 0;
                next_buffer = {8'b0,rx_data,next_buffer[15:0]};
                next_state = HR_ACC;
            end
            FIRST_S2: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_FIRST_S2;
            end
            STORE_FIRST_S2: begin
                get_rx_data = 0;
                hrready = 0;
                next_buffer = {24'b0,rx_data};
                next_state = SEC_S2;
            end
            SEC_S2: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_SEC_S2;
            end
            STORE_SEC_S2: begin
                next_state = HR_ACC;
                get_rx_data = 0;
                hrready = 0;
                next_buffer = {16'b0,rx_data,next_buffer[7:0]};
            end
            HR_ACC: begin
                hrready = 1;
                hr_avail = 1;
                next_state = IDLE;
            end
        endcase
    end
endmodule

