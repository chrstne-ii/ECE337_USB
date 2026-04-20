onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_usb_rx/clk
add wave -noupdate /tb_usb_rx/n_rst
add wave -noupdate /tb_usb_rx/test_name
add wave -noupdate -group Inputs -color Plum -radix unsigned /tb_usb_rx/dp_in
add wave -noupdate -group Inputs -color Plum -radix unsigned /tb_usb_rx/dm_in
add wave -noupdate -group Inputs -color Plum -radix unsigned /tb_usb_rx/buffer_occ
add wave -noupdate -group Outputs -color {Medium Spring Green} /tb_usb_rx/rx_packet_data
add wave -noupdate -group Outputs -color {Medium Spring Green} -radix binary /tb_usb_rx/rx_packet
add wave -noupdate -group Outputs -color {Medium Spring Green} -radix unsigned /tb_usb_rx/rx_transfer_active
add wave -noupdate -group Outputs -color {Medium Spring Green} -radix unsigned /tb_usb_rx/rx_data_ready
add wave -noupdate -group Outputs -color {Medium Spring Green} -radix unsigned /tb_usb_rx/rx_error
add wave -noupdate -group Outputs -color {Medium Spring Green} -radix unsigned /tb_usb_rx/store_rx_packet_data
add wave -noupdate -group Outputs -color {Medium Spring Green} -radix unsigned /tb_usb_rx/flush
add wave -noupdate /tb_usb_rx/DUT/rcu/current
add wave -noupdate /tb_usb_rx/DUT/rcu/next_state
add wave -noupdate -group RCU -color Yellow -radix binary /tb_usb_rx/DUT/pbits
add wave -noupdate -group RCU -color Yellow -radix binary /tb_usb_rx/DUT/mbits
add wave -noupdate -group RCU -color Yellow /tb_usb_rx/DUT/rcu/new_packet
add wave -noupdate -group RCU -color Yellow /tb_usb_rx/DUT/rcu/byte_in
add wave -noupdate -group RCU -color Yellow /tb_usb_rx/DUT/rcu/byte_shift
add wave -noupdate -group RCU -color Yellow /tb_usb_rx/DUT/rcu/bits_shift
add wave -noupdate -group RCU -color Yellow /tb_usb_rx/DUT/byte_done
add wave -noupdate -group RCU -color Yellow /tb_usb_rx/DUT/bits_done
add wave -noupdate /tb_usb_rx/DUT/byteShifter/shift_enable
add wave -noupdate /tb_usb_rx/DUT/byteShifter/serial_in
add wave -noupdate /tb_usb_rx/DUT/byteShifter/parallel_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6714181 ps} 0}
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
WaveRestoreZoom {0 ps} {5731710 ps}
