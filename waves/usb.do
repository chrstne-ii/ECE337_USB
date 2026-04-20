onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_usb/clk
add wave -noupdate /tb_usb/n_rst
add wave -noupdate /tb_usb/hsel
add wave -noupdate /tb_usb/hwrite
add wave -noupdate /tb_usb/hready
add wave -noupdate /tb_usb/hresp
add wave -noupdate /tb_usb/htrans
add wave -noupdate /tb_usb/hsize
add wave -noupdate /tb_usb/haddr
add wave -noupdate /tb_usb/hwdata
add wave -noupdate /tb_usb/hrdata
add wave -noupdate /tb_usb/dp_in
add wave -noupdate /tb_usb/dm_in
add wave -noupdate /tb_usb/dp_out
add wave -noupdate /tb_usb/dm_out
add wave -noupdate /tb_usb/d_mode
add wave -noupdate /tb_usb/read_val
add wave -noupdate /tb_usb/test_case_num
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {400399559 ps} 0}
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
WaveRestoreZoom {0 ps} {420420189 ps}
