`timescale 1ns / 10ps

module hready_read_fsm #(
) (
    input logic clk, n_rst,
    input logic hresp, hwrite, hsel,
    input logic [3:0] haddr,
    input logic [1:0] hsize,
    input logic [7:0] rx_data,
    output logic hrready, get_rx_data, hr_avail,
    output logic [31:0] buffer
);

    typedef enum logic[3:0] {IDLE, FIRST, STORE_FIRST, SEC, STORE_SEC, THIRD, STORE_THIRD, FOURTH, STORE_FOURTH, HR_ACC,FIRST_S1,STORE_FIRST_S1} state_t;

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
                if(haddr<4'h4 && hsize > 2'h0 && !hresp && !hwrite && hsel) begin
                    next_state = FIRST;
                end 
                else if(haddr<4'h4 && hsize == 2'h0 && !hresp && !hwrite && hsel)begin
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
            FIRST: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_FIRST;
            end
            STORE_FIRST: begin
                get_rx_data = 0;
                hrready = 0;
                next_buffer[7:0] = rx_data;
                next_state = SEC;
            end
            SEC: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_SEC;
            end
            STORE_SEC: begin
                next_state = THIRD;
                get_rx_data = 0;
                hrready = 0;
                next_buffer = {16'b0,rx_data,next_buffer[7:0]};
                if(hsize == 2'h1) begin
                    next_state = IDLE;
                end
            end
            THIRD: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_THIRD;
            end
            STORE_THIRD: begin
                get_rx_data = 0;
                hrready = 0;
                next_buffer[23:16] = rx_data;
                next_state = FOURTH;
            end
            FOURTH: begin
                get_rx_data = 1;
                hrready = 0;
                next_state = STORE_FOURTH;
            end
            STORE_FOURTH: begin
                get_rx_data = 0;
                hrready = 0;
                next_buffer[31:24] = rx_data;
                next_state = HR_ACC;
            end
            default: begin
                hrready = 1;
                hr_avail = 1;
                next_state = IDLE;
            end
        endcase
    end
endmodule

