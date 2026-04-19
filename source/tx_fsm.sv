`timescale 1ns / 10ps

typedef enum logic [5:0] {
    IDLE, STORE_SYNC, LOAD_SYNC, STORE_PID, LOAD_PID, STORE_DATA, LOAD_DATA, STORE_CRC1, LOAD_CRC1, STORE_CRC2, LOAD_CRC2,
    STORE_EOP, LOAD_EOP1, LOAD_EOP2, RESET, ERROR
} state_t;

localparam DATA0 =   4'b0011;
localparam DATA1 =   4'b1011;
localparam ACK   =   4'b0010;
localparam NAK   =   4'b1010;
localparam STALL =   4'b1110;

module tx_fsm #(
    // parameters
) (
    input logic clk, n_rst, rollover_8,
    input logic [3:0] tx_packet, 
    input logic [6:0] buffer_occupancy,
    input logic [7:0] pid_packet, tx_packet_data,
    input logic bit_clk,
    output logic enable_timer, tx_transfer_active, end_packet, get_tx_packet_data, first, clear, tx_error, idle,
    output logic [7:0] packet
);
    state_t state, next_state;

    always_ff @(posedge clk, negedge n_rst) begin : FSM_LOGIC
        if (!n_rst) begin
            state <= IDLE;
        end
        else begin
            state <= next_state;
        end
    end

    always_comb begin : FSM_COMB
        next_state = state;
        case (state)
            IDLE: 
                if (((tx_packet == DATA0||tx_packet == DATA1) && (buffer_occupancy != 0)) || ((tx_packet == ACK)|(tx_packet == NAK)|(tx_packet == STALL))) begin
                    next_state = STORE_SYNC;
                end else if (((tx_packet == DATA0||tx_packet == DATA1) && (buffer_occupancy == 0))) begin
                    next_state = ERROR;
                end
            STORE_SYNC: 
                next_state = LOAD_SYNC;
            LOAD_SYNC:
                next_state = STORE_PID;
            STORE_PID:
                if (rollover_8) begin
                    next_state = LOAD_PID;
                end
            LOAD_PID: 
                if ((tx_packet == DATA0 || tx_packet == DATA1) && !rollover_8) begin
                    next_state = STORE_DATA;
                end else if ((tx_packet == ACK) || (tx_packet == NAK) || (tx_packet == STALL)) begin
                    next_state = STORE_EOP;
                end
            STORE_DATA:
                if (rollover_8 && buffer_occupancy != 0) begin
                    next_state = LOAD_DATA;
                end else if (buffer_occupancy == 0) begin
                    next_state = STORE_CRC1; 
                end
            LOAD_DATA:
                if (buffer_occupancy != 0 && !rollover_8) begin
                    next_state = STORE_DATA;
                end
            STORE_CRC1:
                if (rollover_8) begin
                    next_state = LOAD_CRC1;
                end
            LOAD_CRC1: 
                if (!rollover_8) begin
                    next_state = STORE_CRC2;
                end
            STORE_CRC2:
                if (rollover_8) begin
                    next_state = LOAD_CRC2;
                end
            LOAD_CRC2: 
                if (!rollover_8) begin
                    next_state = STORE_EOP;
                end
            STORE_EOP:
                if (rollover_8) begin
                    next_state = LOAD_EOP1;
                end
            LOAD_EOP1:
                if (bit_clk) begin
                    next_state = LOAD_EOP2;
                end
            LOAD_EOP2:
                if (bit_clk) begin
                    next_state = RESET;
                end
            RESET:
                next_state = IDLE;
            ERROR:
                if (((tx_packet == DATA0||tx_packet == DATA1) && (buffer_occupancy != 0)) || ((tx_packet == ACK)|(tx_packet == NAK)|(tx_packet == STALL))) begin
                    next_state = STORE_SYNC;
                end
        endcase
    end

    always_comb begin : FSM_OUT
        enable_timer = 1'b0;
        tx_transfer_active = 1'b0;
        end_packet = 1'b0;
        packet = '1;
        get_tx_packet_data = 1'b0;
        first = 1'b0;
        clear = 1'b0;
        tx_error = 1'b0;
        idle = 1'b0;
        case (state)
            IDLE: begin
                idle = 1'b1;
            end
            STORE_SYNC: begin
                tx_transfer_active = 1'b1;
                packet = 8'b1;
                first = 1'b1;
            end
            LOAD_SYNC: begin
                enable_timer = 1'b1;
                tx_transfer_active = 1'b1;
                //first = 1'b1;
            end
            STORE_PID: begin
                enable_timer = 1'b1;
                tx_transfer_active = 1'b1;
                packet = pid_packet;
            end
            LOAD_PID: begin
                enable_timer = 1'b1;
                tx_transfer_active = 1'b1;
                packet = pid_packet;
            end
            STORE_DATA: begin
                get_tx_packet_data = 1'b1;
                enable_timer = 1'b1;
                tx_transfer_active = 1'b1;
                packet = tx_packet_data;
            end
            LOAD_DATA: begin
                enable_timer = 1'b1;
                tx_transfer_active = 1'b1;
                packet = tx_packet_data;
            end
            STORE_CRC1: begin
                enable_timer = 1'b1;
                tx_transfer_active = 1'b1;
                packet = 8'b0;
            end
            LOAD_CRC1: begin
                enable_timer = 1'b1;
                tx_transfer_active = 1'b1;
                packet = 8'b0;
            end
            STORE_CRC2: begin
                enable_timer = 1'b1;
                tx_transfer_active = 1'b1;
                packet = 8'b0;
            end
            LOAD_CRC2: begin
                enable_timer = 1'b1;
                tx_transfer_active = 1'b1;
                packet = 8'b0;
            end
            STORE_EOP: begin
                enable_timer = 1'b1;
                tx_transfer_active = 1'b1;
            end
            LOAD_EOP1: begin
                enable_timer = 1'b1;
                tx_transfer_active = 1'b1;
                end_packet = 1'b1;
            end
            LOAD_EOP2: begin
                enable_timer = 1'b1;
                tx_transfer_active = 1'b1;
                end_packet = 1'b1;
            end
            RESET: begin
                clear = 1'b1;
                tx_transfer_active = 1'b1;
            end
            ERROR: begin
                tx_error = 1'b1;   
            end   
        endcase
    end

endmodule

