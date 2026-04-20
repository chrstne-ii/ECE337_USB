`timescale 1ns / 10ps

module rx_fsm #(
    // parameters
) (
    input logic clk, n_rst,
    input logic new_packet, byte_done, bits_done, eop,
    input logic [2:0] pbits, mbits,
    input logic [6:0] buffer_occ,
    input logic [7:0] byte_in,
    output logic byte_shift, bits_shift, rx_transfer_active, rx_data_ready, store_rx_packet_data, rx_error, flush,
    output logic [2:0] rx_packet,
    output logic [7:0] rx_packet_data
);
    typedef enum logic [6:0] {IDLE, SHIFT1, SYNC_CHECK, SHIFT2, PID_CHECK, PID_IDENTIFY, SHIFT3, TOKEN1, TOKEN2,
                              TOKEN_FLUSH, TOKEN_STORE1, TOKEN_STORE2, EOP_SHIFT, SHIFT4, DATA1, DATA2,
                              EOP_YET, DATA_STORE, SHIFT5, ACK, EOP_CHECK, DONE, ERROR} state_t;

    state_t current, next_state;
    logic [2:0] saved_pid;
    logic [7:0] saved_byte1, saved_byte2;

    always_ff @(posedge clk, negedge n_rst) begin
        if (!n_rst) begin
            current <= IDLE;
            saved_pid <= '0;
            saved_byte1 <= '0;
            saved_byte2 <= '0;
        end else begin
            current <= next_state;
            if((current == SHIFT2) && byte_done) saved_pid <= byte_in[2:0] + {2'b0, byte_in[3]};
            if(current == ACK) saved_pid <= 3'd5;
            if((current == SHIFT3 || current == SHIFT4) && byte_done) saved_byte1 <= byte_in;
            if((current == SHIFT5) && byte_done) begin
                saved_byte1 <= saved_byte2;
                saved_byte2 <= byte_in;
            end
            if((current == DATA1 || current == TOKEN1) && byte_done) saved_byte2 <= byte_in;
        end
    end

    always_comb begin : states
        // logic eop;
        // eop = (saved_byte1[0] && 3'b010);
        next_state = current;

        case (current)
            IDLE: if(new_packet) next_state = SHIFT1;
            SHIFT1: if(byte_done) next_state = SYNC_CHECK;
            SYNC_CHECK: next_state = (byte_in == 8'b10000000) ? SHIFT2 : ERROR;
            SHIFT2: if(byte_done) next_state = PID_CHECK;
            PID_CHECK: next_state = ((byte_in[3:0] == ~byte_in[7:4]) && 
                                    (byte_in[3:0] inside {4'd1, 4'd2, 4'd3, 4'd9, 4'd11})) ? PID_IDENTIFY : ERROR;
            PID_IDENTIFY: begin
                case (byte_in[2:0]+ {2'b0, byte_in[3]})
                    3'd1, 3'd2: next_state = SHIFT3;
                    3'd3, 3'd4: next_state = SHIFT4; 
                    default: next_state = ERROR;
                endcase
                if(byte_in[3:0] == 4'b0010) next_state = ACK;
            end
            SHIFT3: if(byte_done) next_state = TOKEN1;
            TOKEN1: if(byte_done) next_state = TOKEN2;
            TOKEN2: next_state = (byte_in[7:3] == '0) ? TOKEN_FLUSH : ERROR;
            TOKEN_FLUSH: next_state = TOKEN_STORE1;
            TOKEN_STORE1: next_state = TOKEN_STORE2;
            TOKEN_STORE2: next_state = EOP_SHIFT;
            EOP_SHIFT: if(bits_done) next_state = EOP_CHECK;
            SHIFT4: if(byte_done) next_state = DATA1;
            DATA1: if(byte_done) next_state = DATA2;
            DATA2: if(byte_done) next_state = EOP_YET;
            EOP_YET: begin
                if (eop && ({saved_byte2, saved_byte1} == '0)) next_state = DONE;
                if ((eop && ({saved_byte2, saved_byte1} != '0)) || (buffer_occ >= 7'd64)) next_state = ERROR;
                if (!eop) next_state = DATA_STORE;
            end
            DATA_STORE: next_state = SHIFT5;
            SHIFT5: if(byte_done) next_state = EOP_YET;
            ACK: if(bits_done) next_state = EOP_CHECK;
            EOP_CHECK: next_state = (((pbits[1:0] == '0) && (mbits[1:0] == '0)) && pbits[2] && !mbits[2]) ? DONE : ERROR;
            DONE: next_state = IDLE;
            ERROR: if(new_packet) next_state = SHIFT1;
            default: next_state = IDLE;
        endcase
    end

    always_comb begin : outputs
        byte_shift = '0; bits_shift = '0; 
        rx_transfer_active = '0; rx_data_ready = '0; store_rx_packet_data = '0; 
        rx_error = '0; flush = '0; 
        rx_packet ='0; rx_packet_data = '0;

        case (current)
            SHIFT1: begin
                byte_shift = 1'b1;
                rx_transfer_active = 1'b1;
            end
            SYNC_CHECK: begin
                rx_transfer_active = 1'b1;
            end
            SHIFT2: begin
                byte_shift = 1'b1;
                rx_transfer_active = 1'b1;
            end
            PID_CHECK, PID_IDENTIFY: begin
                rx_transfer_active = 1'b1;
            end
            SHIFT3: begin
                byte_shift = 1'b1;
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
            end
            TOKEN1: begin
                byte_shift = 1'b1;
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
            end
            TOKEN2: begin
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
            end
            TOKEN_FLUSH: begin
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
                flush = 1'b1;
            end
            TOKEN_STORE1: begin
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
                store_rx_packet_data = 1'b1;
                rx_packet_data = saved_byte1;
            end
            TOKEN_STORE2: begin
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
                store_rx_packet_data = 1'b1;
                rx_packet_data = byte_in;
            end
            EOP_SHIFT: begin
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
                bits_shift= 1;
            end
            SHIFT4: begin
                byte_shift = 1'b1;
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
                flush = 1'b1;
            end
            DATA1: begin
                byte_shift = 1'b1;
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
            end
            DATA2: begin
                byte_shift = 1'b1;
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
            end
            EOP_YET: begin
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
            end
            DATA_STORE: begin
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
                store_rx_packet_data = 1'b1;
                rx_packet_data = saved_byte1;
            end
            SHIFT5: begin
                byte_shift = 1'b1;
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
            end
            ACK: begin
                bits_shift = 1'b1;
                rx_transfer_active = 1'b1;
                rx_packet = 3'd5;
            end
            EOP_CHECK: begin
                rx_transfer_active = 1'b1;
                rx_packet = saved_pid;
            end
            DONE: begin
                rx_data_ready = 1'b1;
                rx_packet = saved_pid;
            end
            ERROR: begin
                rx_error  = 1'b1;
            end
            default: ;  
        endcase

    end

endmodule
