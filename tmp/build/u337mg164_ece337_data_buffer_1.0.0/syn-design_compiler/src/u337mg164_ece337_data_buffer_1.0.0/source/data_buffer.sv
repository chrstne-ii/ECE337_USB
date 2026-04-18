`timescale 1ns / 10ps

module data_buffer #(
    // parameters
) (
    input logic clk, n_rst, flush, clear, store_rx_packet_data, store_tx_data, get_rx_data, get_tx_packet_data,
    input logic [7:0] tx_data, rx_packet_data,
    output logic [6:0] buffer_occupancy,
    output logic [7:0] rx_data, tx_packet_data
);

    logic [5:0] write_index, read_index, next_write_index, next_read_index;
    logic [7:0] fifo_in;
    logic [511:0] fifo, next_fifo;

    always_comb begin : NEXT_WRITE_LOGIC
        next_write_index = write_index;
        if (store_rx_packet_data||store_tx_data) begin
            if (write_index == 6'd8) begin
                next_write_index = 6'd8;
            end else begin
                next_write_index = next_write_index + 1;
            end
        end else if (clear||flush) begin
            next_write_index = 6'd0;
        end
    end

    always_ff @(posedge clk, negedge n_rst) begin : WRITE
        if (!n_rst) begin
            write_index <= 6'd0;
        end else begin
            write_index <= next_write_index;
        end
    end

    always_comb begin : PACKET_SELECT
        fifo_in = '0;
        if (store_rx_packet_data) begin
            fifo_in = rx_packet_data;
        end else if (store_tx_data) begin
            fifo_in = tx_data;
        end
    end

    always_comb begin : NEXT_FIFO
        next_fifo = fifo;
        if (clear||flush) begin
            next_fifo = '0;
        end 
        if (buffer_occupancy < 64) begin
            next_fifo[write_index * 8 +: 8] = fifo_in;
        end
    end

    always_ff @(posedge clk, negedge n_rst) begin : FIFO
        if (!n_rst) begin
            fifo <= '0;
        end else begin
            fifo <= next_fifo;
        end 
    end

    always_comb begin : NEXT_READ_LOGIC
        next_read_index = read_index;
        if (clear||flush) begin
            next_read_index = 6'd0;
        end else if (get_tx_packet_data||get_rx_data) begin
            if (read_index == 6'd64) begin
                next_read_index = 6'd64;
            end else begin
                next_read_index = next_read_index + 1;
            end
        end
    end

    always_ff @(posedge clk, negedge n_rst) begin : READ
        if (!n_rst) begin
            read_index <= 6'd0;
        end else begin
            read_index <= next_read_index;
        end
    end

    always_comb begin : POP
        rx_data = '0;
        tx_packet_data = '0;
        if (buffer_occupancy > 0) begin
            if (get_rx_data) begin
                rx_data = fifo[read_index * 8 +: 8];
            end
            else if (get_tx_packet_data) begin
                tx_packet_data = fifo[read_index * 8 +: 8];
            end
        end
    end

    always_comb begin : BUFFER_OCCUPANCY
        if (write_index == read_index) begin
            buffer_occupancy = 7'b0;
        end
        else if (write_index < read_index) begin
            buffer_occupancy = 64 - (read_index - write_index) + 1;
        end
        else begin
            buffer_occupancy = write_index - read_index;
        end
    end



endmodule

