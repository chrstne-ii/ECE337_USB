`timescale 1ns / 10ps

module rx_fsm #(
    // parameters
) (
    input logic clk, n_rst,
    input logic new_packet, byte_done, bits_done,
    input logic [2:0] pbits, mbits,
    input logic [6:0] buffer_occ,
    input logic [7:0] byte_in,
    output logic byte_shift, bits_shift, rx_transfer_active, rx_data_ready, store_rx_packet_data, rx_error, flush,
    output logic [2:0] rx_packet,
    output logic [7:0] rx_packet_data
);
    typedef enum logic [6:0] {IDLE, SHIFT1, SYNC_CHECK, SHIFT2, PID_CHECK, PID_IDENTIFY, SHIFT3, TOKEN1, TOKEN2,
                              TOKEN_FLUSH, TOKEN_STORE1, TOKEN_STORE2, SHIFT4, DATA1, DATA2, EOP_YET, DATA_STORE,
                              SHIFT5, ACK, EOP_CHECK, ERROR} state_t;
    
    typedef struct {
        logic byte_shift, bits_shift, active, data_ready, store, error, flush;
        logic [2:0] pid;
        logic [7:0] byte1, byte2, data;
    } struct_t;

    state_t current, next_state;
    struct_t outs;

    logic eop;

    always_ff @(posedge clk, negedge n_rst) begin
        if (!n_rst) begin
            current <= IDLE;
        end else begin
            current <= next_state;
        end
    end

    always_comb begin : states
        next_state = current;

        case (current)
            IDLE: if(new_packet) next_state = SHIFT1;
            SHIFT1: if(byte_done) next_state = SYNC_CHECK;
            SYNC_CHECK: next_state = (byte_in == 8'b10000000) ? SHIFT2 : ERROR;
            SHIFT2: if(byte_done) next_state = PID_CHECK;
            PID_CHECK: next_state = ((byte_in[3:0] == ~byte_in[7:4]) && (byte_in[3:0] inside {[1:3], 9, 11})) ? PID_IDENTIFY : ERROR;
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
            TOKEN_STORE2: next_state = EOP_CHECK;
            SHIFT4: if(byte_done) next_state = DATA1;
            DATA1: if(byte_done) next_state = DATA2;
            DATA2: if(byte_done) next_state = EOP_YET;
            EOP_YET: begin
                eop = (byte_in[1:0] == '0) && (byte_in[2] == 1'b1);
                if (eop && ({outs.byte2, outs.byte1} == '0)) next_state = IDLE;
                if ((eop && ({outs.byte2, outs.byte1} != '0)) || (buffer_occ >= 7'd64)) next_state = ERROR;
                if (!eop) next_state = DATA_STORE;
            end
            DATA_STORE: next_state = SHIFT5;
            SHIFT5: if(byte_done) next_state = EOP_YET;
            ACK: if(bits_done) next_state = EOP_CHECK;
            EOP_CHECK: begin
                if(((pbits[1:0] != '0) && (mbits[1:0] != '0)) || !pbits[2] || !mbits[2]) next_state = ERROR;
                if(((pbits[1:0] == '0) && (mbits[1:0] == '0)) && pbits[2] && mbits[2]) next_state = IDLE;
            end
            ERROR: if(new_packet) next_state = SHIFT1;
            default: next_state = IDLE;
        endcase
    end

    always_comb begin : outputs
        outs = '{default: '0};

        case (current)
            SHIFT1: outs = '{byte_shift: 1, active: 1, default: '0};
            SYNC_CHECK: outs = '{active: 1, default: '0};
            SHIFT2: outs = '{byte_shift: 1, active: 1, default: '0};
            PID_CHECK: outs = '{active: 1, default: '0};
            PID_IDENTIFY: 
            SHIFT3: outs = '{byte_shift: 1, active: 1, pid: byte_in[2:0] + {2'b0, byte_in[3]}, default: '0};
            TOKEN1: outs = '{byte_shift: 1, active: 1, pid: outs.pid, byte1: byte_in, default: '0};
            TOKEN2: outs = '{active: 1, pid: outs.pid, byte1: outs.byte1, default: '0};
            TOKEN_FLUSH: outs = '{active: 1, pid: outs.pid, byte1: outs.byte1, flush: 1, default: '0};
            TOKEN_STORE1: outs = '{active: 1, pid: outs.pid, byte1: outs.byte1, store: 1, data: outs.byte1, default: '0};
            TOKEN_STORE2: outs = '{active: 1, pid: outs.pid, byte1: outs.byte1, store: 1, data: byte_in, default: '0};
            SHIFT4: outs = '{byte_shift: 1, active: 1, pid: byte_in[2:0] + {2'b0, byte_in[3]}, flush: 1, default: '0};
            DATA1: outs = '{byte_shift: 1, active: 1, pid: outs.pid, byte1: byte_in, default: '0};
            DATA2: outs = '{byte_shift: 1, active: 1, pid: outs.pid, byte1: outs.byte1, byte2: byte_in, default: '0};
            EOP_YET: outs = '{active: 1, pid: outs.pid, byte1: outs.byte1, byte2: outs.byte2, default: '0};
            DATA_STORE: outs = '{active: 1, pid: outs.pid, byte1: outs.byte1, byte2: outs.byte2, store: 1, data: outs.byte1, default: '0};
            SHIFT5: outs = '{byte_shift: 1, active: 1, pid: outs.pid, byte1: outs.byte2, byte2: byte_in, default: '0};
            ACK: outs = '{bits_shift: 1, active: 1, pid: 3'd5, default: '0};
            EOP_CHECK: outs = '{active: 1, pid: outs.pid, default: '0};
            ERROR: outs = '{error: 1, default: '0};
            default: outs = '{default: '0};
        endcase

        byte_shift = outs.byte_shift;
        bits_shift = outs.bits_shift;
        rx_transfer_active = outs.active;
        rx_error = outs.error;
        rx_data_ready = outs.data_ready;
        store_rx_packet_data = outs.store;
        rx_packet = outs.pid;
        rx_packet_data = outs.data;
        flush = outs.flush;
    end

endmodule
