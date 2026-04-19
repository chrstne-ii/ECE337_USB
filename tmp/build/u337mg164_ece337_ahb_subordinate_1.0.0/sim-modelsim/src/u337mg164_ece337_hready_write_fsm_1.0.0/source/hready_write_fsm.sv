`timescale 1ns / 10ps

module hready_write_fsm #(
    // parameters
) (
    input logic clk, n_rst,
    input logic hresp, prev_hwrite, hsel,
    input logic [3:0] prev_haddr,
    input logic [1:0] prev_hsize,
    input logic [31:0] hwdata,
    output logic hwready, store_tx_data,
    output logic [7:0] tx_data
);

    typedef enum logic[3:0] {IDLE, FIRST, STORE_FIRST, SEC, STORE_SEC, THIRD, STORE_THIRD, FOURTH, STORE_FOURTH, FIRST_S1, STORE_FIRST_S1} state_t;

    state_t state, next_state;
    logic[7:0] next_data;

    always_ff @(posedge clk, negedge n_rst) begin
        if (!n_rst) begin
            state <= IDLE;
            tx_data <= '0;
        end else begin
            state <= next_state;
            tx_data <= next_data;
        end
    end

    always_comb begin
        next_state = IDLE;
        store_tx_data = 0;
        hwready = 1;
        next_data = tx_data;

        casez(state)

            IDLE: begin
                store_tx_data = 0;
                hwready = 1;
                if(prev_haddr<4'h4 && prev_hsize > 0 && !hresp && !prev_hwrite && hsel) begin
                    next_state = FIRST;
                end 
                else if(prev_haddr<4'h4 && prev_hsize == 0 && !hresp && !prev_hwrite && hsel)begin
                    next_state = FIRST_S1;
                end
                else begin
                    next_state = IDLE;
                end
            end
            FIRST_S1: begin
                store_tx_data = 0;
                hwready = 1;
                next_data = hwdata[7:0];
                next_state = STORE_FIRST_S1;
            end
            STORE_FIRST_S1: begin
                store_tx_data = 1;
                hwready = 1;
                next_state = IDLE;
            end
            FIRST: begin
                store_tx_data = 0;
                hwready = 0;
                next_data = hwdata[31:24];
                next_state = STORE_FIRST;
            end
            STORE_FIRST: begin
                store_tx_data = 1;
                hwready = 0;
                next_data = tx_data;
                next_state = SEC;
            end
            SEC: begin
                store_tx_data = 0;
                hwready = 0;
                next_data = hwdata[23:16];
                next_state = STORE_SEC;
            end
            STORE_SEC: begin
                next_state = THIRD;
                store_tx_data = 1;
                hwready = 0;
                next_data = tx_data;
                if(prev_hsize == 1) begin
                    next_state = IDLE;
                end
            end
            THIRD: begin
                store_tx_data = 0;
                hwready = 0;
                next_state = STORE_THIRD;
                next_data = hwdata[15:8];
            end
            STORE_THIRD: begin
                store_tx_data = 1;
                hwready = 0;
                next_data = tx_data;
                next_state = FOURTH;
            end
            FOURTH: begin
                store_tx_data = 0;
                hwready = 0;
                next_data = hwdata[7:0];
                next_state = IDLE;
            end
            default: begin
                store_tx_data = 1;
                hwready = 1;
                next_data = tx_data;
                next_state = IDLE;
            end
        endcase
    end
endmodule

