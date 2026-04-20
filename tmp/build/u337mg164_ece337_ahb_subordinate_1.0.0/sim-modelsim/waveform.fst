$date
	Mon Apr 20 12:39:45 2026
$end
$version
	QuestaSim Version 2021.4
$end
$timescale
	1ps
$end

$scope module tb_ahb_subordinate $end
$var parameter 0 ! CLK_PERIOD $end
$var parameter 32 " TIMEOUT $end
$var parameter 3 # BURST_SINGLE $end
$var parameter 3 $ BURST_INCR $end
$var parameter 3 % BURST_WRAP4 $end
$var parameter 3 & BURST_INCR4 $end
$var parameter 3 ' BURST_WRAP8 $end
$var parameter 3 ( BURST_INCR8 $end
$var parameter 3 ) BURST_WRAP16 $end
$var parameter 3 * BURST_INCR16 $end
$var reg 1 + clk $end
$var reg 1 , n_rst $end
$var reg 1 - hsel $end
$var reg 4 . haddr [3:0] $end
$var reg 2 / hsize [1:0] $end
$var reg 3 0 hburst [2:0] $end
$var reg 2 1 htrans [1:0] $end
$var reg 1 2 hwrite $end
$var reg 32 3 hwdata [31:0] $end
$var reg 32 4 hrdata [31:0] $end
$var reg 1 5 hresp $end
$var reg 1 6 hready $end
$var reg 1 7 rx_transfer_active $end
$var reg 1 8 rx_data_ready $end
$var reg 1 9 rx_error $end
$var reg 1 : tx_transfer_active $end
$var reg 1 ; tx_error $end
$var reg 3 < rx_packet [2:0] $end
$var reg 7 = buffer_occ [6:0] $end
$var reg 8 > rx_data [7:0] $end
$var reg 1 ? d_mode $end
$var reg 1 @ get_rx_data $end
$var reg 1 A store_tx_data $end
$var reg 1 B clear $end
$var reg 3 C tx_packet [2:0] $end
$var reg 8 D tx_data [7:0] $end
$var reg 32 E data [31:0] $end
$var reg 16 F reg4 [15:0] $end
$var reg 16 G reg6 [15:0] $end
$var reg 8 H reg8 [7:0] $end
$var reg 1 I in $end
$var reg 1 J out $end
$var reg 1 K ack $end
$var reg 1 L data0 $end
$var reg 1 M data1 $end

$scope task reset_dut $end
$upscope $end

$scope task reset_model $end
$upscope $end

$scope task enqueue_poll $end
$var reg 4 N addr [3:0] $end
$var reg 2 O size [1:0] $end
$upscope $end

$scope task poll_until $end
$var reg 4 P addr [3:0] $end
$var reg 2 Q size [1:0] $end
$var reg 32 R data [31:0] $end
$var integer 32 S iters $end
$upscope $end

$scope task enqueue_read $end
$var reg 4 T addr [3:0] $end
$var reg 2 U size [1:0] $end
$var reg 32 V exp_read [31:0] $end
$upscope $end

$scope task enqueue_write $end
$var reg 4 W addr [3:0] $end
$var reg 2 X size [1:0] $end
$var reg 32 Y wdata [31:0] $end
$upscope $end

$scope task enqueue_fakewrite $end
$var reg 4 Z addr [3:0] $end
$var reg 2 [ size [1:0] $end
$var reg 32 \ wdata [31:0] $end
$upscope $end

$scope task enqueue_burst_read $end
$var reg 4 ] base_addr [3:0] $end
$var reg 2 ^ size [1:0] $end
$var reg 3 _ burst [2:0] $end
$upscope $end

$scope task enqueue_burst_write $end
$var reg 4 ` base_addr [3:0] $end
$var reg 2 a size [1:0] $end
$var reg 3 b burst [2:0] $end
$upscope $end

$scope task execute_transactions $end
$var integer 32 c num_transactions $end
$upscope $end

$scope task finish_transactions $end
$upscope $end

$scope module BFM $end
$var parameter 32 d DATA_WIDTH $end
$var parameter 32 e ADDR_WIDTH $end
$var parameter 32 f DATA_SELECT_WIDTH $end
$var parameter 32 g DATA_WIDTH_BITS $end
$var parameter 32 h DATA_MAX_BIT $end
$var parameter 32 i ADDR_MAX_BIT $end
$var parameter 0 j BUS_DELAY $end
$var parameter 2 k TRANS_IDLE $end
$var parameter 2 l TRANS_BUSY $end
$var parameter 2 m TRANS_NSEQ $end
$var parameter 2 n TRANS_SEQ $end
$var parameter 3 o BURST_SINGLE $end
$var parameter 3 p BURST_INCR $end
$var parameter 3 q BURST_WRAP4 $end
$var parameter 3 r BURST_INCR4 $end
$var parameter 3 s BURST_WRAP8 $end
$var parameter 3 t BURST_INCR8 $end
$var parameter 3 u BURST_WRAP16 $end
$var parameter 3 v BURST_INCR16 $end
$var wire 1 w clk $end
$var reg 1 x hsel $end
$var reg 4 y haddr [3:0] $end
$var reg 3 z hsize [2:0] $end
$var reg 2 { htrans [1:0] $end
$var reg 3 | hburst [2:0] $end
$var reg 1 } hwrite $end
$var reg 32 ~ hwdata [31:0] $end
$var wire 1 !! hrdata [31] $end
$var wire 1 "! hrdata [30] $end
$var wire 1 #! hrdata [29] $end
$var wire 1 $! hrdata [28] $end
$var wire 1 %! hrdata [27] $end
$var wire 1 &! hrdata [26] $end
$var wire 1 '! hrdata [25] $end
$var wire 1 (! hrdata [24] $end
$var wire 1 )! hrdata [23] $end
$var wire 1 *! hrdata [22] $end
$var wire 1 +! hrdata [21] $end
$var wire 1 ,! hrdata [20] $end
$var wire 1 -! hrdata [19] $end
$var wire 1 .! hrdata [18] $end
$var wire 1 /! hrdata [17] $end
$var wire 1 0! hrdata [16] $end
$var wire 1 1! hrdata [15] $end
$var wire 1 2! hrdata [14] $end
$var wire 1 3! hrdata [13] $end
$var wire 1 4! hrdata [12] $end
$var wire 1 5! hrdata [11] $end
$var wire 1 6! hrdata [10] $end
$var wire 1 7! hrdata [9] $end
$var wire 1 8! hrdata [8] $end
$var wire 1 9! hrdata [7] $end
$var wire 1 :! hrdata [6] $end
$var wire 1 ;! hrdata [5] $end
$var wire 1 <! hrdata [4] $end
$var wire 1 =! hrdata [3] $end
$var wire 1 >! hrdata [2] $end
$var wire 1 ?! hrdata [1] $end
$var wire 1 @! hrdata [0] $end
$var wire 1 A! hresp $end
$var wire 1 B! hready $end
$var reg 32 C! last_hrdata_read [31:0] $end
$var integer 32 D! num_transactions_left $end

$scope fork new_transaction $end
$var reg 1 E! fake $end
$var reg 1 F! write_mode $end
$var reg 4 G! address [3:0] $end
$var reg 32 H! data [31:0] $end
$var reg 1 I! expect_error $end
$var reg 3 J! size [2:0] $end
$var reg 2 K! trans [1:0] $end
$var reg 3 L! burst [2:0] $end
$var reg 1 M! verify $end
$upscope $end

$scope fork bus_state $end
$var reg 1 N! addr_active $end
$var reg 1 O! data_active $end
$var integer 32 P! current_addr_transaction_num $end
$var integer 32 Q! current_data_transaction_num $end

$scope fork current_addr_transaction $end
$var reg 1 R! fake $end
$var reg 1 S! write_mode $end
$var reg 4 T! address [3:0] $end
$var reg 32 U! data [31:0] $end
$var reg 1 V! expect_error $end
$var reg 3 W! size [2:0] $end
$var reg 2 X! trans [1:0] $end
$var reg 3 Y! burst [2:0] $end
$var reg 1 Z! verify $end
$upscope $end

$scope fork current_data_transaction $end
$var reg 1 [! fake $end
$var reg 1 \! write_mode $end
$var reg 4 ]! address [3:0] $end
$var reg 32 ^! data [31:0] $end
$var reg 1 _! expect_error $end
$var reg 3 `! size [2:0] $end
$var reg 2 a! trans [1:0] $end
$var reg 3 b! burst [2:0] $end
$var reg 1 c! verify $end
$upscope $end
$upscope $end
$var integer 32 d! i $end
$var integer 32 e! minaddr $end
$var integer 32 f! maxaddr $end

$scope function bus_idleize_addr $end
$upscope $end

$scope function bus_idleize_data $end
$upscope $end

$scope function bus_idleize $end
$upscope $end

$scope function clear_trans $end
$upscope $end

$scope function reset_model $end
$upscope $end

$scope function enqueue_transaction $end
$var reg 1 g! sel $end
$var reg 1 h! write $end
$var reg 4 i! addr [3:0] $end
$var reg 1 j! exp_error $end
$var reg 3 k! size [2:0] $end
$var reg 3 l! burst [2:0] $end
$var reg 1 m! verify $end
$var integer 32 n! i $end
$var reg 1 o! wrap $end
$var integer 32 p! burst_size $end
$var integer 32 q! offset $end
$upscope $end

$scope task run_transactions $end
$var integer 32 r! num_transactions $end
$upscope $end

$scope begin DISPATCH_TRANSACTION $end
$upscope $end

$scope begin VERIFY_OUTPUT $end
$upscope $end

$scope function get_last_read $end
$var reg 32 s! get_last_read [31:0] $end
$upscope $end

$scope task wait_done $end
$upscope $end
$upscope $end

$scope module DUT $end
$var wire 1 t! clk $end
$var wire 1 u! n_rst $end
$var wire 1 v! hsel $end
$var wire 1 w! hwrite $end
$var wire 1 x! rx_transfer_active $end
$var wire 1 y! rx_data_ready $end
$var wire 1 z! rx_error $end
$var wire 1 {! tx_transfer_active $end
$var wire 1 |! tx_error $end
$var wire 1 }! hsize [1] $end
$var wire 1 ~! hsize [0] $end
$var wire 1 !" rx_packet [2] $end
$var wire 1 "" rx_packet [1] $end
$var wire 1 #" rx_packet [0] $end
$var wire 1 $" haddr [3] $end
$var wire 1 %" haddr [2] $end
$var wire 1 &" haddr [1] $end
$var wire 1 '" haddr [0] $end
$var wire 1 (" buffer_occ [6] $end
$var wire 1 )" buffer_occ [5] $end
$var wire 1 *" buffer_occ [4] $end
$var wire 1 +" buffer_occ [3] $end
$var wire 1 ," buffer_occ [2] $end
$var wire 1 -" buffer_occ [1] $end
$var wire 1 ." buffer_occ [0] $end
$var wire 1 /" rx_data [7] $end
$var wire 1 0" rx_data [6] $end
$var wire 1 1" rx_data [5] $end
$var wire 1 2" rx_data [4] $end
$var wire 1 3" rx_data [3] $end
$var wire 1 4" rx_data [2] $end
$var wire 1 5" rx_data [1] $end
$var wire 1 6" rx_data [0] $end
$var wire 1 7" hwdata [31] $end
$var wire 1 8" hwdata [30] $end
$var wire 1 9" hwdata [29] $end
$var wire 1 :" hwdata [28] $end
$var wire 1 ;" hwdata [27] $end
$var wire 1 <" hwdata [26] $end
$var wire 1 =" hwdata [25] $end
$var wire 1 >" hwdata [24] $end
$var wire 1 ?" hwdata [23] $end
$var wire 1 @" hwdata [22] $end
$var wire 1 A" hwdata [21] $end
$var wire 1 B" hwdata [20] $end
$var wire 1 C" hwdata [19] $end
$var wire 1 D" hwdata [18] $end
$var wire 1 E" hwdata [17] $end
$var wire 1 F" hwdata [16] $end
$var wire 1 G" hwdata [15] $end
$var wire 1 H" hwdata [14] $end
$var wire 1 I" hwdata [13] $end
$var wire 1 J" hwdata [12] $end
$var wire 1 K" hwdata [11] $end
$var wire 1 L" hwdata [10] $end
$var wire 1 M" hwdata [9] $end
$var wire 1 N" hwdata [8] $end
$var wire 1 O" hwdata [7] $end
$var wire 1 P" hwdata [6] $end
$var wire 1 Q" hwdata [5] $end
$var wire 1 R" hwdata [4] $end
$var wire 1 S" hwdata [3] $end
$var wire 1 T" hwdata [2] $end
$var wire 1 U" hwdata [1] $end
$var wire 1 V" hwdata [0] $end
$var reg 1 W" d_mode $end
$var reg 1 X" hresp $end
$var reg 1 Y" hready $end
$var reg 1 Z" get_rx_data $end
$var reg 1 [" store_tx_data $end
$var reg 1 \" clear $end
$var reg 4 ]" tx_packet [3:0] $end
$var reg 8 ^" tx_data [7:0] $end
$var reg 32 _" hrdata [31:0] $end
$var reg 8 `" reg8 [7:0] $end
$var reg 8 a" regC [7:0] $end
$var reg 8 b" regD [7:0] $end
$var reg 16 c" reg4 [15:0] $end
$var reg 16 d" reg6 [15:0] $end
$var reg 32 e" buffer [31:0] $end
$var reg 32 f" next_hrdata [31:0] $end
$var reg 16 g" next_reg [15:0] $end
$var reg 16 h" register [15:0] $end
$var reg 4 i" prev_haddr [3:0] $end
$var reg 4 j" size [3:0] $end
$var reg 4 k" prev_size [3:0] $end
$var reg 2 l" prev_hsize [1:0] $end
$var reg 1 m" hwready $end
$var reg 1 n" hrready $end
$var reg 1 o" hr_avail $end
$var reg 1 p" prev_hresp $end
$var reg 1 q" prev_hresp_high $end
$var reg 1 r" hresp_high $end
$var reg 1 s" prev_hwrite $end
$var reg 1 t" prev_clear $end
$var reg 1 u" in $end
$var reg 1 v" out $end
$var reg 1 w" ack $end
$var reg 1 x" data0 $end
$var reg 1 y" data1 $end

$scope begin address_checker $end
$upscope $end

$scope begin comb_reg $end
$upscope $end

$scope begin reg_4 $end
$upscope $end

$scope begin reg_C $end
$upscope $end

$scope begin reg_D $end
$upscope $end

$scope module read_fsm $end
$var wire 1 t! clk $end
$var wire 1 u! n_rst $end
$var wire 1 z" hresp $end
$var wire 1 w! hwrite $end
$var wire 1 v! hsel $end
$var wire 1 {" hready $end
$var wire 1 $" haddr [3] $end
$var wire 1 %" haddr [2] $end
$var wire 1 &" haddr [1] $end
$var wire 1 '" haddr [0] $end
$var wire 1 }! hsize [1] $end
$var wire 1 ~! hsize [0] $end
$var wire 1 /" rx_data [7] $end
$var wire 1 0" rx_data [6] $end
$var wire 1 1" rx_data [5] $end
$var wire 1 2" rx_data [4] $end
$var wire 1 3" rx_data [3] $end
$var wire 1 4" rx_data [2] $end
$var wire 1 5" rx_data [1] $end
$var wire 1 6" rx_data [0] $end
$var reg 1 |" hrready $end
$var reg 1 }" get_rx_data $end
$var reg 1 ~" hr_avail $end
$var reg 32 !# buffer [31:0] $end
$var reg 5 "# state [4:0] $end
$var reg 5 ## next_state [4:0] $end
$var reg 32 $# next_buffer [31:0] $end
$upscope $end

$scope module write_fsm $end
$var wire 1 t! clk $end
$var wire 1 u! n_rst $end
$var wire 1 %# hresp $end
$var wire 1 v! hsel $end
$var wire 1 w! hwrite $end
$var wire 1 &# hready $end
$var wire 1 $" haddr [3] $end
$var wire 1 %" haddr [2] $end
$var wire 1 &" haddr [1] $end
$var wire 1 '" haddr [0] $end
$var wire 1 }! hsize [1] $end
$var wire 1 ~! hsize [0] $end
$var wire 1 7" hwdata [31] $end
$var wire 1 8" hwdata [30] $end
$var wire 1 9" hwdata [29] $end
$var wire 1 :" hwdata [28] $end
$var wire 1 ;" hwdata [27] $end
$var wire 1 <" hwdata [26] $end
$var wire 1 =" hwdata [25] $end
$var wire 1 >" hwdata [24] $end
$var wire 1 ?" hwdata [23] $end
$var wire 1 @" hwdata [22] $end
$var wire 1 A" hwdata [21] $end
$var wire 1 B" hwdata [20] $end
$var wire 1 C" hwdata [19] $end
$var wire 1 D" hwdata [18] $end
$var wire 1 E" hwdata [17] $end
$var wire 1 F" hwdata [16] $end
$var wire 1 G" hwdata [15] $end
$var wire 1 H" hwdata [14] $end
$var wire 1 I" hwdata [13] $end
$var wire 1 J" hwdata [12] $end
$var wire 1 K" hwdata [11] $end
$var wire 1 L" hwdata [10] $end
$var wire 1 M" hwdata [9] $end
$var wire 1 N" hwdata [8] $end
$var wire 1 O" hwdata [7] $end
$var wire 1 P" hwdata [6] $end
$var wire 1 Q" hwdata [5] $end
$var wire 1 R" hwdata [4] $end
$var wire 1 S" hwdata [3] $end
$var wire 1 T" hwdata [2] $end
$var wire 1 U" hwdata [1] $end
$var wire 1 V" hwdata [0] $end
$var reg 1 '# hwready $end
$var reg 1 (# store_tx_data $end
$var reg 8 )# tx_data [7:0] $end
$var reg 5 *# state [4:0] $end
$var reg 5 +# next_state [4:0] $end
$var reg 8 ,# next_data [7:0] $end
$upscope $end
$upscope $end
$upscope $end

$scope begin std $end
$upscope $end
$enddefinitions $end
#0
$dumpvars
0+
0,
x-
bx .
bx /
bx 0
bx 1
x2
bx 3
b0 4
05
16
07
08
09
0:
0;
b0 <
b0 =
b0 >
0?
0@
0A
0B
b0 C
b0 D
xx
bx y
bx z
bx {
bx |
x}
bx ~
bx C!
xg!
xh!
bx i!
xj!
bx k!
bx l!
xm!
xo!
bx s!
0W"
0X"
1Y"
0Z"
0["
0\"
b0 ]"
b0 ^"
b0 _"
b0 `"
b0 a"
b0 b"
b0 c"
b0 d"
b0 e"
b0 f"
b0 g"
b0 h"
b0 i"
bx j"
b1 k"
b0 l"
1m"
1n"
0o"
0p"
0q"
0r"
0s"
0t"
0u"
0v"
0w"
0x"
0y"
1|"
0}"
0~"
b0 !#
b0 "#
b0 ##
b0 $#
1'#
0(#
b0 )#
b0 *#
b0 +#
b0 ,#
bx N
bx O
bx P
bx Q
bx R
bx T
bx U
bx V
bx W
bx X
bx Y
bx Z
bx [
bx \
bx ]
bx ^
bx _
bx `
bx a
bx b
bx E
b0 F
b0 G
b0 H
0I
0J
0K
0L
0M
bx E!
bx F!
bx G!
bx H!
bx I!
bx J!
bx K!
bx L!
bx M!
b0 N!
b0 O!
b0 P!
b0 Q!
b0 R!
b0 S!
b0 T!
b0 U!
b0 V!
b0 W!
b0 X!
b0 Y!
b0 Z!
b0 [!
b0 \!
b0 ]!
b0 ^!
b0 _!
b0 `!
b0 a!
b0 b!
b0 c!
b1111101000 "
b0 #
b1 $
b10 %
b11 &
b100 '
b101 (
b110 )
b111 *
b100 d
b100 e
b10 f
b100000 g
b11111 h
b11 i
b0 k
b1 l
b10 m
b11 n
b0 o
b1 p
b10 q
b11 r
b100 s
b101 t
b110 u
b111 v
r10 !
r0.8 j
b0 D!
bx n!
bx p!
bx q!
b0 r!
b0 d!
b0 e!
b0 f!
b0 S
b0 c
xV"
xU"
xT"
xS"
xR"
xQ"
xP"
xO"
xN"
xM"
xL"
xK"
xJ"
xI"
xH"
xG"
xF"
xE"
xD"
xC"
xB"
xA"
x@"
x?"
x>"
x="
x<"
x;"
x:"
x9"
x8"
x7"
06"
05"
04"
03"
02"
01"
00"
0/"
0."
0-"
0,"
0+"
0*"
0)"
0("
x'"
x&"
x%"
x$"
0#"
0""
0!"
x~!
x}!
0|!
0{!
0z!
0y!
0x!
xw!
xv!
0u!
0t!
1B!
0A!
0@!
0?!
0>!
0=!
0<!
0;!
0:!
09!
08!
07!
06!
05!
04!
03!
02!
01!
00!
0/!
0.!
0-!
0,!
0+!
0*!
0)!
0(!
0'!
0&!
0%!
0$!
0#!
0"!
0!!
0w
1&#
0%#
1{"
0z"
$end
#5000
1+
1w
1t!
#5800
0x
b0 y
b0 z
b0 {
b0 |
0}
b0 ~
b0 3
02
b0 0
b0 1
b0 /
b0 .
0-
0w!
0'"
0&"
0%"
0$"
0~!
0}!
0V"
0U"
0T"
0S"
0R"
0Q"
0P"
0O"
0N"
0M"
0L"
0K"
0J"
0I"
0H"
0G"
0F"
0E"
0D"
0C"
0B"
0A"
0@"
0?"
0>"
0="
0<"
0;"
0:"
09"
08"
07"
0v!
b0 j"
#10000
0+
0w
0t!
#15000
1+
1w
1t!
#20000
0+
0w
0t!
1,
1u!
#25000
1+
1w
1t!
#30000
0+
0w
0t!
#35000
1+
1w
1t!
#40000
0+
0w
0t!
b10 W
b1 X
b10111011 Y
1g!
1h!
b10 i!
0j!
b1 k!
b0 l!
0m!
b1 F!
b0 E!
b1 J!
b0 L!
b0 I!
b0 M!
b10 q!
b10 G!
b10 K!
b101110110000000000000000 H!
b1100 W
b100000001 Y
b1100 i!
b0 q!
b1100 G!
b100000001 H!
b1100 T
b1 U
b0 V
0h!
1m!
b0 F!
b1 M!
b0 H!
b11 c
b11 r!
#45000
1+
1w
1t!
#50000
0+
0w
0t!
b11 D!
#55000
1+
1w
1t!
b10 D!
b1 N!
b1 S!
b10 T!
b101110110000000000000000 U!
b1 W!
b10 X!
b1 P!
#55800
1x
b10 y
1}
b1 z
b10 {
b10 1
b1 /
12
b10 .
1-
1w!
1&"
1~!
1v!
b1011 +#
b1111 j"
#60000
0+
0w
0t!
#65000
1+
1w
1t!
b1 O!
b1 \!
b10 ]!
b101110110000000000000000 ^!
b1 `!
b10 a!
b1 Q!
b1 D!
b1100 T!
b100000001 U!
b10 P!
b1011 *#
b1 l"
b10 i"
1s"
b0 k"
b0 +#
0'#
b1100 +#
0m"
0Y"
06
0B!
0{"
0&#
b0 +#
1'#
0'#
b1100 +#
#65800
0x
b0 y
b0 z
b0 {
0}
1x
b1100 y
1}
b1 z
b10 {
b101110110000000000000000 ~
b101110110000000000000000 3
b1100 .
0&"
1%"
1$"
1F"
1E"
1C"
1B"
1A"
1?"
b0 +#
1'#
0'#
b1100 +#
#70000
0+
0w
0t!
#75000
1+
1w
1t!
b1100 i"
b1100 *#
b0 +#
1'#
1(#
0'#
b1101 +#
1["
1A
#75800
0x
b0 y
b0 z
b0 {
0}
b0 ~
1x
b1100 y
1}
b1 z
b10 {
b101110110000000000000000 ~
#80000
0+
0w
0t!
#85000
1+
1w
1t!
b1101 *#
b0 +#
0(#
1'#
0'#
b10111011 ,#
b1110 +#
0["
0A
#85800
0x
b0 y
b0 z
b0 {
0}
b0 ~
1x
b1100 y
1}
b1 z
b10 {
b101110110000000000000000 ~
#90000
0+
0w
0t!
#95000
1+
1w
1t!
b1110 *#
b10111011 )#
b10111011 ^"
b10111011 D
b0 +#
1'#
1(#
0'#
1["
1A
#95800
0x
b0 y
b0 z
b0 {
0}
b0 ~
1x
b1100 y
1}
b1 z
b10 {
b101110110000000000000000 ~
#100000
0+
0w
0t!
#105000
1+
1w
1t!
b0 *#
0(#
1'#
1m"
0["
0A
1Y"
16
1B!
1{"
1&#
#105800
0x
b0 y
b0 z
b0 {
0}
b0 ~
1x
b1100 y
1}
b1 z
b10 {
b101110110000000000000000 ~
#110000
0+
0w
0t!
#115000
1+
1w
1t!
b1100 ]!
b100000001 ^!
b10 Q!
b0