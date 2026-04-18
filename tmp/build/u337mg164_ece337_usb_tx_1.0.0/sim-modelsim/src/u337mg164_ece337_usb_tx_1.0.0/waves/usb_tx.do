onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group {Global Signals} /tb_usb_tx/clk
add wave -noupdate -group {Global Signals} /tb_usb_tx/n_rst
add wave -noupdate -group {Global Signals} /tb_usb_tx/DUT/rollover_25
add wave -noupdate -group {Input Signals} /tb_usb_tx/tx_packet
add wave -noupdate -group {Input Signals} /tb_usb_tx/buffer_occupancy
add wave -noupdate -group {Input Signals} /tb_usb_tx/tx_packet_data
add wave -noupdate -group {Output Signals} /tb_usb_tx/tx_transfer_active
add wave -noupdate -group {Output Signals} /tb_usb_tx/tx_error
add wave -noupdate -group {Output Signals} /tb_usb_tx/get_tx_packet_data
add wave -noupdate -group {Output Signals} /tb_usb_tx/dp_out
add wave -noupdate -group {Output Signals} /tb_usb_tx/dm_out
add wave -noupdate /tb_usb_tx/DUT/fsm/state
add wave -noupdate /tb_usb_tx/DUT/rollover_8
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {450005 ps} 0}
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
WaveRestoreZoom {0 ps} {345210 ps}
