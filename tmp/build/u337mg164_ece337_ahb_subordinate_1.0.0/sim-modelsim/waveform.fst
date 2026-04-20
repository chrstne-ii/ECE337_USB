$date
	Mon Apr 20 11:29:52 2026
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

$scope task reset_dut $end
$upscope $end

$scope task reset_model $end
$upscope $end

$scope task enqueue_poll $end
$var reg 4 E addr [3:0] $end
$var reg 2 F size [1:0] $end
$upscope $end

$scope task poll_until $end
$var reg 4 G addr [3:0] $end
$var reg 2 H size [1:0] $end
$var reg 32 I data [31:0] $end
$var integer 32 J iters $end
$upscope $end

$scope task enqueue_read $end
$var reg 4 K addr [3:0] $end
$var reg 2 L size [1:0] $end
$var reg 32 M exp_read [31:0] $end
$upscope $end

$scope task enqueue_write $end
$var reg 4 N addr [3:0] $end
$var reg 2 O size [1:0] $end
$var reg 32 P wdata [31:0] $end
$upscope $end

$scope task enqueue_fakewrite $end
$var reg 4 Q addr [3:0] $end
$var reg 2 R size [1:0] $end
$var reg 32 S wdata [31:0] $end
$upscope $end

$scope task enqueue_burst_read $end
$var reg 4 T base_addr [3:0] $end
$var reg 2 U size [1:0] $end
$var reg 3 V burst [2:0] $end
$upscope $end

$scope task enqueue_burst_write $end
$var reg 4 W base_addr [3:0] $end
$var reg 2 X size [1:0] $end
$var reg 3 Y burst [2:0] $end
$upscope $end

$scope task execute_transactions $end
$var integer 32 Z num_transactions $end
$upscope $end

$scope task finish_transactions $end
$upscope $end

$scope module BFM $end
$var parameter 32 [ DATA_WIDTH $end
$var parameter 32 \ ADDR_WIDTH $end
$var parameter 32 ] DATA_SELECT_WIDTH $end
$var parameter 32 ^ DATA_WIDTH_BITS $end
$var parameter 32 _ DATA_MAX_BIT $end
$var parameter 32 ` ADDR_MAX_BIT $end
$var parameter 0 a BUS_DELAY $end
$var parameter 2 b TRANS_IDLE $end
$var parameter 2 c TRANS_BUSY $end
$var parameter 2 d TRANS_NSEQ $end
$var parameter 2 e TRANS_SEQ $end
$var parameter 3 f BURST_SINGLE $end
$var parameter 3 g BURST_INCR $end
$var parameter 3 h BURST_WRAP4 $end
$var parameter 3 i BURST_INCR4 $end
$var parameter 3 j BURST_WRAP8 $end
$var parameter 3 k BURST_INCR8 $end
$var parameter 3 l BURST_WRAP16 $end
$var parameter 3 m BURST_INCR16 $end
$var wire 1 n clk $end
$var reg 1 o hsel $end
$var reg 4 p haddr [3:0] $end
$var reg 3 q hsize [2:0] $end
$var reg 2 r htrans [1:0] $end
$var reg 3 s hburst [2:0] $end
$var reg 1 t hwrite $end
$var reg 32 u hwdata [31:0] $end
$var wire 1 v hrdata [31] $end
$var wire 1 w hrdata [30] $end
$var wire 1 x hrdata [29] $end
$var wire 1 y hrdata [28] $end
$var wire 1 z hrdata [27] $end
$var wire 1 { hrdata [26] $end
$var wire 1 | hrdata [25] $end
$var wire 1 } hrdata [24] $end
$var wire 1 ~ hrdata [23] $end
$var wire 1 !! hrdata [22] $end
$var wire 1 "! hrdata [21] $end
$var wire 1 #! hrdata [20] $end
$var wire 1 $! hrdata [19] $end
$var wire 1 %! hrdata [18] $end
$var wire 1 &! hrdata [17] $end
$var wire 1 '! hrdata [16] $end
$var wire 1 (! hrdata [15] $end
$var wire 1 )! hrdata [14] $end
$var wire 1 *! hrdata [13] $end
$var wire 1 +! hrdata [12] $end
$var wire 1 ,! hrdata [11] $end
$var wire 1 -! hrdata [10] $end
$var wire 1 .! hrdata [9] $end
$var wire 1 /! hrdata [8] $end
$var wire 1 0! hrdata [7] $end
$var wire 1 1! hrdata [6] $end
$var wire 1 2! hrdata [5] $end
$var wire 1 3! hrdata [4] $end
$var wire 1 4! hrdata [3] $end
$var wire 1 5! hrdata [2] $end
$var wire 1 6! hrdata [1] $end
$var wire 1 7! hrdata [0] $end
$var wire 1 8! hresp $end
$var wire 1 9! hready $end
$var reg 32 :! last_hrdata_read [31:0] $end
$var integer 32 ;! num_transactions_left $end

$scope fork new_transaction $end
$var reg 1 <! fake $end
$var reg 1 =! write_mode $end
$var reg 4 >! address [3:0] $end
$var reg 32 ?! data [31:0] $end
$var reg 1 @! expect_error $end
$var reg 3 A! size [2:0] $end
$var reg 2 B! trans [1:0] $end
$var reg 3 C! burst [2:0] $end
$var reg 1 D! verify $end
$upscope $end

$scope fork bus_state $end
$var reg 1 E! addr_active $end
$var reg 1 F! data_active $end
$var integer 32 G! current_addr_transaction_num $end
$var integer 32 H! current_data_transaction_num $end

$scope fork current_addr_transaction $end
$var reg 1 I! fake $end
$var reg 1 J! write_mode $end
$var reg 4 K! address [3:0] $end
$var reg 32 L! data [31:0] $end
$var reg 1 M! expect_error $end
$var reg 3 N! size [2:0] $end
$var reg 2 O! trans [1:0] $end
$var reg 3 P! burst [2:0] $end
$var reg 1 Q! verify $end
$upscope $end

$scope fork current_data_transaction $end
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
$upscope $end
$var integer 32 [! i $end
$var integer 32 \! minaddr $end
$var integer 32 ]! maxaddr $end

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
$var reg 1 ^! sel $end
$var reg 1 _! write $end
$var reg 4 `! addr [3:0] $end
$var reg 1 a! exp_error $end
$var reg 3 b! size [2:0] $end
$var reg 3 c! burst [2:0] $end
$var reg 1 d! verify $end
$var integer 32 e! i $end
$var reg 1 f! wrap $end
$var integer 32 g! burst_size $end
$var integer 32 h! offset $end
$upscope $end

$scope task run_transactions $end
$var integer 32 i! num_transactions $end
$upscope $end

$scope begin DISPATCH_TRANSACTION $end
$upscope $end

$scope begin VERIFY_OUTPUT $end
$upscope $end

$scope function get_last_read $end
$var reg 32 j! get_last_read [31:0] $end
$upscope $end

$scope task wait_done $end
$upscope $end
$upscope $end

$scope module DUT $end
$var wire 1 k! clk $end
$var wire 1 l! n_rst $end
$var wire 1 m! hsel $end
$var wire 1 n! hwrite $end
$var wire 1 o! rx_transfer_active $end
$var wire 1 p! rx_data_ready $end
$var wire 1 q! rx_error $end
$var wire 1 r! tx_transfer_active $end
$var wire 1 s! tx_error $end
$var wire 1 t! hsize [1] $end
$var wire 1 u! hsize [0] $end
$var wire 1 v! rx_packet [2] $end
$var wire 1 w! rx_packet [1] $end
$var wire 1 x! rx_packet [0] $end
$var wire 1 y! haddr [3] $end
$var wire 1 z! haddr [2] $end
$var wire 1 {! haddr [1] $end
$var wire 1 |! haddr [0] $end
$var wire 1 }! buffer_occ [6] $end
$var wire 1 ~! buffer_occ [5] $end
$var wire 1 !" buffer_occ [4] $end
$var wire 1 "" buffer_occ [3] $end
$var wire 1 #" buffer_occ [2] $end
$var wire 1 $" buffer_occ [1] $end
$var wire 1 %" buffer_occ [0] $end
$var wire 1 &" rx_data [7] $end
$var wire 1 '" rx_data [6] $end
$var wire 1 (" rx_data [5] $end
$var wire 1 )" rx_data [4] $end
$var wire 1 *" rx_data [3] $end
$var wire 1 +" rx_data [2] $end
$var wire 1 ," rx_data [1] $end
$var wire 1 -" rx_data [0] $end
$var wire 1 ." hwdata [31] $end
$var wire 1 /" hwdata [30] $end
$var wire 1 0" hwdata [29] $end
$var wire 1 1" hwdata [28] $end
$var wire 1 2" hwdata [27] $end
$var wire 1 3" hwdata [26] $end
$var wire 1 4" hwdata [25] $end
$var wire 1 5" hwdata [24] $end
$var wire 1 6" hwdata [23] $end
$var wire 1 7" hwdata [22] $end
$var wire 1 8" hwdata [21] $end
$var wire 1 9" hwdata [20] $end
$var wire 1 :" hwdata [19] $end
$var wire 1 ;" hwdata [18] $end
$var wire 1 <" hwdata [17] $end
$var wire 1 =" hwdata [16] $end
$var wire 1 >" hwdata [15] $end
$var wire 1 ?" hwdata [14] $end
$var wire 1 @" hwdata [13] $end
$var wire 1 A" hwdata [12] $end
$var wire 1 B" hwdata [11] $end
$var wire 1 C" hwdata [10] $end
$var wire 1 D" hwdata [9] $end
$var wire 1 E" hwdata [8] $end
$var wire 1 F" hwdata [7] $end
$var wire 1 G" hwdata [6] $end
$var wire 1 H" hwdata [5] $end
$var wire 1 I" hwdata [4] $end
$var wire 1 J" hwdata [3] $end
$var wire 1 K" hwdata [2] $end
$var wire 1 L" hwdata [1] $end
$var wire 1 M" hwdata [0] $end
$var reg 1 N" d_mode $end
$var reg 1 O" hresp $end
$var reg 1 P" hready $end
$var reg 1 Q" get_rx_data $end
$var reg 1 R" store_tx_data $end
$var reg 1 S" clear $end
$var reg 4 T" tx_packet [3:0] $end
$var reg 8 U" tx_data [7:0] $end
$var reg 32 V" hrdata [31:0] $end
$var reg 8 W" reg8 [7:0] $end
$var reg 8 X" regC [7:0] $end
$var reg 8 Y" regD [7:0] $end
$var reg 16 Z" reg4 [15:0] $end
$var reg 16 [" reg6 [15:0] $end
$var reg 32 \" buffer [31:0] $end
$var reg 32 ]" next_hrdata [31:0] $end
$var reg 16 ^" next_reg [15:0] $end
$var reg 16 _" register [15:0] $end
$var reg 4 `" prev_haddr [3:0] $end
$var reg 4 a" size [3:0] $end
$var reg 4 b" prev_size [3:0] $end
$var reg 2 c" prev_hsize [1:0] $end
$var reg 1 d" hwready $end
$var reg 1 e" hrready $end
$var reg 1 f" hr_avail $end
$var reg 1 g" prev_hresp $end
$var reg 1 h" prev_hresp_high $end
$var reg 1 i" hresp_high $end
$var reg 1 j" prev_hwrite $end
$var reg 1 k" prev_clear $end
$var reg 1 l" in $end
$var reg 1 m" out $end
$var reg 1 n" ack $end
$var reg 1 o" data0 $end
$var reg 1 p" data1 $end

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
$var wire 1 k! clk $end
$var wire 1 l! n_rst $end
$var wire 1 q" hresp $end
$var wire 1 n! hwrite $end
$var wire 1 m! hsel $end
$var wire 1 r" hready $end
$var wire 1 y! haddr [3] $end
$var wire 1 z! haddr [2] $end
$var wire 1 {! haddr [1] $end
$var wire 1 |! haddr [0] $end
$var wire 1 t! hsize [1] $end
$var wire 1 u! hsize [0] $end
$var wire 1 &" rx_data [7] $end
$var wire 1 '" rx_data [6] $end
$var wire 1 (" rx_data [5] $end
$var wire 1 )" rx_data [4] $end
$var wire 1 *" rx_data [3] $end
$var wire 1 +" rx_data [2] $end
$var wire 1 ," rx_data [1] $end
$var wire 1 -" rx_data [0] $end
$var reg 1 s" hrready $end
$var reg 1 t" get_rx_data $end
$var reg 1 u" hr_avail $end
$var reg 32 v" buffer [31:0] $end
$var reg 5 w" state [4:0] $end
$var reg 5 x" next_state [4:0] $end
$var reg 32 y" next_buffer [31:0] $end
$upscope $end

$scope module write_fsm $end
$var wire 1 k! clk $end
$var wire 1 l! n_rst $end
$var wire 1 z" hresp $end
$var wire 1 m! hsel $end
$var wire 1 n! hwrite $end
$var wire 1 {" hready $end
$var wire 1 y! haddr [3] $end
$var wire 1 z! haddr [2] $end
$var wire 1 {! haddr [1] $end
$var wire 1 |! haddr [0] $end
$var wire 1 t! hsize [1] $end
$var wire 1 u! hsize [0] $end
$var wire 1 ." hwdata [31] $end
$var wire 1 /" hwdata [30] $end
$var wire 1 0" hwdata [29] $end
$var wire 1 1" hwdata [28] $end
$var wire 1 2" hwdata [27] $end
$var wire 1 3" hwdata [26] $end
$var wire 1 4" hwdata [25] $end
$var wire 1 5" hwdata [24] $end
$var wire 1 6" hwdata [23] $end
$var wire 1 7" hwdata [22] $end
$var wire 1 8" hwdata [21] $end
$var wire 1 9" hwdata [20] $end
$var wire 1 :" hwdata [19] $end
$var wire 1 ;" hwdata [18] $end
$var wire 1 <" hwdata [17] $end
$var wire 1 =" hwdata [16] $end
$var wire 1 >" hwdata [15] $end
$var wire 1 ?" hwdata [14] $end
$var wire 1 @" hwdata [13] $end
$var wire 1 A" hwdata [12] $end
$var wire 1 B" hwdata [11] $end
$var wire 1 C" hwdata [10] $end
$var wire 1 D" hwdata [9] $end
$var wire 1 E" hwdata [8] $end
$var wire 1 F" hwdata [7] $end
$var wire 1 G" hwdata [6] $end
$var wire 1 H" hwdata [5] $end
$var wire 1 I" hwdata [4] $end
$var wire 1 J" hwdata [3] $end
$var wire 1 K" hwdata [2] $end
$var wire 1 L" hwdata [1] $end
$var wire 1 M" hwdata [0] $end
$var reg 1 |" hwready $end
$var reg 1 }" store_tx_data $end
$var reg 8 ~" tx_data [7:0] $end
$var reg 5 !# state [4:0] $end
$var reg 5 "# next_state [4:0] $end
$var reg 8 ## next_data [7:0] $end
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
xo
bx p
bx q
bx r
bx s
xt
bx u
bx :!
x^!
x_!
bx `!
xa!
bx b!
bx c!
xd!
xf!
bx j!
0N"
0O"
1P"
0Q"
0R"
0S"
b0 T"
b0 U"
b0 V"
b0 W"
b0 X"
b0 Y"
b0 Z"
b0 ["
b0 \"
b0 ]"
b0 ^"
b0 _"
b0 `"
bx a"
b1 b"
b0 c"
1d"
1e"
0f"
0g"
0h"
0i"
0j"
0k"
0l"
0m"
0n"
0o"
0p"
1s"
0t"
0u"
b0 v"
b0 w"
b0 x"
b0 y"
1|"
0}"
b0 ~"
b0 !#
b0 "#
b0 ##
bx E
bx F
bx G
bx H
bx I
bx K
bx L
bx M
bx N
bx O
bx P
bx Q
bx R
bx S
bx T
bx U
bx V
bx W
bx X
bx Y
bx <!
bx =!
bx >!
bx ?!
bx @!
bx A!
bx B!
bx C!
bx D!
b0 E!
b0 F!
b0 G!
b0 H!
b0 I!
b0 J!
b0 K!
b0 L!
b0 M!
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
b1111101000 "
b0 #
b1 $
b10 %
b11 &
b100 '
b101 (
b110 )
b111 *
b100 [
b100 \
b10 ]
b100000 ^
b11111 _
b11 `
b0 b
b1 c
b10 d
b11 e
b0 f
b1 g
b10 h
b11 i
b100 j
b101 k
b110 l
b111 m
r10 !
r0.8 a
b0 ;!
bx e!
bx g!
bx h!
b0 i!
b0 [!
b0 \!
b0 ]!
b0 J
b0 Z
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
x6"
x5"
x4"
x3"
x2"
x1"
x0"
x/"
x."
0-"
0,"
0+"
0*"
0)"
0("
0'"
0&"
0%"
0$"
0#"
0""
0!"
0~!
0}!
x|!
x{!
xz!
xy!
0x!
0w!
0v!
xu!
xt!
0s!
0r!
0q!
0p!
0o!
xn!
xm!
0l!
0k!
19!
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
0~
0}
0|
0{
0z
0y
0x
0w
0v
0n
1{"
0z"
1r"
0q"
$end
#5000
1+
1n
1k!
#5800
0o
b0 p
b0 q
b0 r
b0 s
0t
b0 u
b0 3
02
b0 0
b0 1
b0 /
b0 .
0-
0n!
0|!
0{!
0z!
0y!
0u!
0t!
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
06"
05"
04"
03"
02"
01"
00"
0/"
0."
0m!
b0 a"
#10000
0+
0n
0k!
#15000
1+
1n
1k!
#20000
0+
0n
0k!
1,
1l!
#25000
1+
1n
1k!
#30000
0+
0n
0k!
#35000
1+
1n
1k!
#40000
0+
0n
0k!
b10 N
b1 O
b10111011 P
1^!
1_!
b10 `!
0a!
b1 b!
b0 c!
0d!
b1 =!
b0 <!
b1 A!
b0 C!
b0 @!
b0 D!
b10 h!
b10 >!
b10 B!
b101110110000000000000000 ?!
b1 K
b0 L
b10111011 M
0_!
b1 `!
b0 b!
1d!
b0 =!
b0 A!
b1 D!
b1 h!
b1 >!
b1011101100000000 ?!
b10 Z
b10 i!
#45000
1+
1n
1k!
#50000
0+
0n
0k!
b10 ;!
#55000
1+
1n
1k!
b1 ;!
b1 E!
b1 J!
b10 K!
b101110110000000000000000 L!
b1 N!
b10 O!
b1 G!
#55800
1o
b10 p
1t
b1 q
b10 r
b10 1
b1 /
12
b10 .
1-
1n!
1{!
1u!
1m!
b10010 x"
b1111 a"
#60000
0+
0n
0k!
b1100 N
b100000001 P
1_!
b1100 `!
b1 b!
0d!
b1 =!
b1 A!
b0 D!
b0 h!
b1100 >!
b100000001 ?!
b1100 K
b1 L
b100000001 M
0_!
1d!
b0 =!
b1 D!
#65000
1+
1n
1k!
b1 F!
b1 S!
b10 T!
b101110110000000000000000 U!
b1 W!
b10 X!
b1 H!
b0 ;!
b0 J!
b1 K!
b1011101100000000 L!
b0 N!
b1 Q!
b10 G!
b10010 w"
b1 c"
b10 `"
1j"
b0 b"
1t"
0s"
b10011 x"
0e"
1Q"
1@
0P"
06
09!
0r"
0{"
b10010 x"
0t"
1s"
1t"
0s"
b10011 x"
#65800
0o
b0 p
b0 q
b0 r
0t
1o
b1 p
b10 r
b101110110000000000000000 u
b101110110000000000000000 3
02
b0 /
b1 .
0n!
1|!
0{!
0u!
1="
1<"
1:"
19"
18"
16"
b10010 x"
0t"
1s"
1t"
0s"
b10011 x"
b0 a"
#70000
0+
0n
0k!
b10 ;!
#75000
1+
1n
1k!
b0 c"
b1 `"
0j"
b10011 w"
0t"
1s"
0s"
b10100 x"
b1 b"
0Q"
0@
#75800
0o
b0 p
b0 r
b0 u
1o
b1 p
b10 r
b101110110000000000000000 u
#80000
0+
0n
0k!
#85000
1+
1n
1k!
b10100 w"
1s"
1t"
0s"
b10101 x"
1Q"
1@
#85800
0o
b0 p
b0 r
b0 u
1o
b1 p
b10 r
b101110110000000000000000 u
#90000
0+
0n
0k!
#95000
1+
1n
1k!
b10101 w"
0t"
1s"
b1001 x"
0s"
0Q"
0@
#95800
0o
b0 p
b0 r
b0 u
1o
b1 p
b10 r
b101110110000000000000000 u
#100000
0+
0n
0k!
#105000
1+
1n
1k!
b1001 w"
1s"
1u"
b0 x"
1f"
1e"
1P"
16
19!
1r"
1{"
b1001 "#
b1001 x"
0u"
1u"
b0 x"
#105800
0o
b0 p
b0 r
b0 u
1o
b1 p
b10 r
b101110110000000000000000 u
#110000
0+
0n
0k!
#115000
1+
1n
1k!
b0 S!
b1 T!
b1011101100000000 U!
b0 W!
b1 Z!
b10 H!
b1 ;!
b1 J!
b1100 K!
b100000001 L!
b1 N!
b0 Q!
b11 G!
b1001 !#
b0 w"
0u"
b1010 x"
b0 "#
b1010 "#
0f"
#115800
0o
b0 p
b0 r
b0 u
1o
b1100 p
1t
b1 q
b10 r
b1 