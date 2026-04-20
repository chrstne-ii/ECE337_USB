`timescale 1ns / 10ps

module hready_write_fsm #(
    // parameters
) (
    input logic clk, n_rst,
    input logic hresp, hsel, hwrite, hready,
    input logic [3:0] haddr,
    input logic [1:0] hsize,
    input logic [31:0] hwdata,
    output logic hwready, store_tx_data,
    output logic [7:0] tx_data
);

    typedef enum logic [4:0] {IDLE, FIRST, STORE_FIRST, SEC, STORE_SEC, THIRD, STORE_THIRD, FOURTH, STORE_FOURTH, FIRST_S1, STORE_FIRST_S1,
    FIRST_S2, STORE_FIRST_S2, SEC_S2, STORE_SEC_S2} state_t;

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
                next_state = IDLE;
                store_tx_data = 0;
                hwready = 1;
                if(haddr<4'h4 && hsize == 4'h2 && !hresp && !hwrite && hsel && hready) begin
                    next_state = FIRST;
                end 
                else if(haddr<4'h4 && hsize == 0 && !hresp && !hwrite && hsel && hready)begin
                    next_state = FIRST_S1;
                end
                else if(haddr<4'h4 && hsize == 4'h1 && !hresp && !hwrite && hsel && hready)begin
                    next_state = FIRST_S2;
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
                hwready = 0;
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
                next_state = STORE_FOURTH;
            end
            STORE_FOURTH: begin
                store_tx_data = 1;
                hwready = 0;
                next_data = tx_data;
                next_state = IDLE;
            end
            FIRST_S2: begin
                store_tx_data = 0;
                hwready = 0;
                next_data = hwdata[31:24];
                next_state = STORE_FIRST;
            end
            STORE_FIRST_S2: begin
                store_tx_data = 1;
                hwready = 0;
                next_data = tx_data;
                next_state = SEC;
            end
            SEC_S2: begin
                store_tx_data = 0;
                hwready = 0;
                next_data = hwdata[23:16];
                next_state = STORE_SEC;
            end
            STORE_SEC_S2: begin
                next_state = IDLE;
                store_tx_data = 1;
                hwready = 0;
                next_data = tx_data;
            end
        endcase
    end
endmodule

