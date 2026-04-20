onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_rx_fsm/clk
add wave -noupdate /tb_rx_fsm/n_rst
add wave -noupdate -expand -group Inputs -radix unsigned /tb_rx_fsm/new_packet
add wave -noupdate -expand -group Inputs -radix unsigned /tb_rx_fsm/byte_done
add wave -noupdate -expand -group Inputs -radix unsigned /tb_rx_fsm/bits_done
add wave -noupdate -expand -group Inputs -radix binary /tb_rx_fsm/pbits
add wave -noupdate -expand -group Inputs -radix binary /tb_rx_fsm/mbits
add wave -noupdate -expand -group Inputs -radix unsigned /tb_rx_fsm/buffer_occ
add wave -noupdate -expand -group Inputs /tb_rx_fsm/byte_in
add wave -noupdate -expand -group Outputs -radix unsigned /tb_rx_fsm/byte_shift
add wave -noupdate -expand -group Outputs -radix unsigned /tb_rx_fsm/bits_shift
add wave -noupdate -expand -group Outputs -radix unsigned /tb_rx_fsm/rx_transfer_active
add wave -noupdate -expand -group Outputs -radix unsigned /tb_rx_fsm/rx_data_ready
add wave -noupdate -expand -group Outputs -radix unsigned /tb_rx_fsm/store_rx_packet_data
add wave -noupdate -expand -group Outputs -radix unsigned /tb_rx_fsm/rx_error
add wave -noupdate -expand -group Outputs -radix unsigned /tb_rx_fsm/flush
add wave -noupdate -expand -group Outputs -radix unsigned /tb_rx_fsm/rx_packet
add wave -noupdate -expand -group Outputs /tb_rx_fsm/rx_packet_data
add wave -noupdate /tb_rx_fsm/DUT/current
add wave -noupdate /tb_rx_fsm/DUT/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1072750 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1533 ns}
