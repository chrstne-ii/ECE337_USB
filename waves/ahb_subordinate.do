onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_ahb_subordinate/DUT/clk
add wave -noupdate /tb_ahb_subordinate/DUT/n_rst
add wave -noupdate -divider Input
add wave -noupdate /tb_ahb_subordinate/DUT/haddr
add wave -noupdate /tb_ahb_subordinate/htrans
add wave -noupdate /tb_ahb_subordinate/DUT/hsel
add wave -noupdate /tb_ahb_subordinate/DUT/hwrite
add wave -noupdate /tb_ahb_subordinate/DUT/hsize
add wave -noupdate /tb_ahb_subordinate/DUT/hwdata
add wave -noupdate /tb_ahb_subordinate/test_string
add wave -noupdate -divider {Module Outputs}
add wave -noupdate /tb_ahb_subordinate/DUT/tx_transfer_active
add wave -noupdate /tb_ahb_subordinate/DUT/rx_transfer_active
add wave -noupdate /tb_ahb_subordinate/DUT/rx_packet
add wave -noupdate /tb_ahb_subordinate/DUT/rx_data_ready
add wave -noupdate /tb_ahb_subordinate/DUT/tx_error
add wave -noupdate /tb_ahb_subordinate/DUT/rx_error
add wave -noupdate /tb_ahb_subordinate/DUT/buffer_occ
add wave -noupdate /tb_ahb_subordinate/DUT/rx_data
add wave -noupdate -divider Output
add wave -noupdate /tb_ahb_subordinate/DUT/d_mode
add wave -noupdate /tb_ahb_subordinate/DUT/hready
add wave -noupdate /tb_ahb_subordinate/DUT/hresp_high
add wave -noupdate /tb_ahb_subordinate/DUT/hresp
add wave -noupdate -divider Signals
add wave -noupdate /tb_ahb_subordinate/DUT/clear
add wave -noupdate /tb_ahb_subordinate/DUT/hrdata
add wave -noupdate /tb_ahb_subordinate/DUT/get_rx_data
add wave -noupdate /tb_ahb_subordinate/DUT/store_tx_data
add wave -noupdate /tb_ahb_subordinate/DUT/tx_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {83371 ps} 0}
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {199500 ps}
