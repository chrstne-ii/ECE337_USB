$date
	Sun Apr 19 17:35:12 2026
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
$var parameter 3 # SIZE_BYTE $end
$var parameter 3 $ SIZE_TWOB $end
$var parameter 3 % SIZE_FOURB $end
$var parameter 4 & ADDR_CTRL $end
$var parameter 4 ' ADDR_FIFO $end
$var parameter 3 ( BURST_SINGLE $end
$var parameter 3 ) BURST_INCR $end
$var parameter 3 * BURST_WRAP4 $end
$var parameter 3 + BURST_INCR4 $end
$var parameter 3 , BURST_WRAP8 $end
$var parameter 3 - BURST_INCR8 $end
$var parameter 3 . BURST_WRAP16 $end
$var parameter 3 / BURST_INCR16 $end
$var reg 1 0 clk $end
$var reg 1 1 n_rst $end
$var reg 1 2 hsel $end
$var reg 8 3 tx_data [7:0] $end
$var reg 8 4 rx_data [7:0] $end
$var reg 7 5 buffer_occ [6:0] $end
$var reg 4 6 haddr [3:0] $end
$var reg 4 7 tx_packet [3:0] $end
$var reg 3 8 hburst [2:0] $end
$var reg 3 9 rx_packet [2:0] $end
$var reg 2 : htrans [1:0] $end
$var reg 2 ; hsize [1:0] $end
$var reg 32 < hwdata [31:0] $end
$var reg 32 = hrdata [31:0] $end
$var reg 1 > hresp $end
$var reg 1 ? hready $end
$var reg 1 @ hwrite $end
$var reg 1 A clear $end
$var reg 1 B d_mode $end
$var reg 1 C store_tx_data $end
$var reg 1 D tx_transfer_active $end
$var reg 1 E tx_error $end
$var reg 1 F get_rx_data $end
$var reg 1 G rx_transfer_active $end
$var reg 1 H rx_error $end
$var reg 1 I rx_data_ready $end

$scope task reset_model $end
$upscope $end

$scope task enqueue_poll $end
$var reg 4 J addr [3:0] $end
$var reg 2 K size [1:0] $end
$upscope $end

$scope task poll_until $end
$var reg 4 L addr [3:0] $end
$var reg 2 M size [1:0] $end
$var reg 32 N data [31:0] $end
$var integer 32 O iters $end
$upscope $end

$scope task enqueue_read $end
$var reg 4 P addr [3:0] $end
$var reg 2 Q size [1:0] $end
$var reg 32 R exp_read [31:0] $end
$upscope $end

$scope task enqueue_write $end
$var reg 4 S addr [3:0] $end
$var reg 2 T size [1:0] $end
$var reg 32 U wdata [31:0] $end
$upscope $end

$scope task enqueue_fakewrite $end
$var reg 4 V addr [3:0] $end
$var reg 2 W size [1:0] $end
$var reg 32 X wdata [31:0] $end
$upscope $end

$scope task enqueue_burst_read $end
$var reg 4 Y base_addr [3:0] $end
$var reg 2 Z size [1:0] $end
$var reg 3 [ burst [2:0] $end
$upscope $end

$scope task enqueue_burst_write $end
$var reg 4 \ base_addr [3:0] $end
$var reg 2 ] size [1:0] $end
$var reg 3 ^ burst [2:0] $end
$upscope $end

$scope task execute_transactions $end
$var integer 32 _ num_transactions $end
$upscope $end

$scope task finish_transactions $end
$upscope $end

$scope task reset_dut $end
$upscope $end

$scope module DUT $end
$var wire 1 ` clk $end
$var wire 1 a n_rst $end
$var wire 1 b hsel $end
$var wire 1 c hwrite $end
$var wire 1 d rx_transfer_active $end
$var wire 1 e rx_data_ready $end
$var wire 1 f rx_error $end
$var wire 1 g tx_transfer_active $end
$var wire 1 h tx_error $end
$var wire 1 i hsize [1] $end
$var wire 1 j hsize [0] $end
$var wire 1 k htrans [1] $end
$var wire 1 l htrans [0] $end
$var wire 1 m hburst [2] $end
$var wire 1 n hburst [1] $end
$var wire 1 o hburst [0] $end
$var wire 1 p rx_packet [2] $end
$var wire 1 q rx_packet [1] $end
$var wire 1 r rx_packet [0] $end
$var wire 1 s haddr [3] $end
$var wire 1 t haddr [2] $end
$var wire 1 u haddr [1] $end
$var wire 1 v haddr [0] $end
$var wire 1 w buffer_occ [6] $end
$var wire 1 x buffer_occ [5] $end
$var wire 1 y buffer_occ [4] $end
$var wire 1 z buffer_occ [3] $end
$var wire 1 { buffer_occ [2] $end
$var wire 1 | buffer_occ [1] $end
$var wire 1 } buffer_occ [0] $end
$var wire 1 ~ rx_data [7] $end
$var wire 1 !! rx_data [6] $end
$var wire 1 "! rx_data [5] $end
$var wire 1 #! rx_data [4] $end
$var wire 1 $! rx_data [3] $end
$var wire 1 %! rx_data [2] $end
$var wire 1 &! rx_data [1] $end
$var wire 1 '! rx_data [0] $end
$var wire 1 (! hwdata [31] $end
$var wire 1 )! hwdata [30] $end
$var wire 1 *! hwdata [29] $end
$var wire 1 +! hwdata [28] $end
$var wire 1 ,! hwdata [27] $end
$var wire 1 -! hwdata [26] $end
$var wire 1 .! hwdata [25] $end
$var wire 1 /! hwdata [24] $end
$var wire 1 0! hwdata [23] $end
$var wire 1 1! hwdata [22] $end
$var wire 1 2! hwdata [21] $end
$var wire 1 3! hwdata [20] $end
$var wire 1 4! hwdata [19] $end
$var wire 1 5! hwdata [18] $end
$var wire 1 6! hwdata [17] $end
$var wire 1 7! hwdata [16] $end
$var wire 1 8! hwdata [15] $end
$var wire 1 9! hwdata [14] $end
$var wire 1 :! hwdata [13] $end
$var wire 1 ;! hwdata [12] $end
$var wire 1 <! hwdata [11] $end
$var wire 1 =! hwdata [10] $end
$var wire 1 >! hwdata [9] $end
$var wire 1 ?! hwdata [8] $end
$var wire 1 @! hwdata [7] $end
$var wire 1 A! hwdata [6] $end
$var wire 1 B! hwdata [5] $end
$var wire 1 C! hwdata [4] $end
$var wire 1 D! hwdata [3] $end
$var wire 1 E! hwdata [2] $end
$var wire 1 F! hwdata [1] $end
$var wire 1 G! hwdata [0] $end
$var reg 1 H! d_mode $end
$var reg 1 I! hresp $end
$var reg 1 J! hready $end
$var reg 1 K! get_rx_data $end
$var reg 1 L! store_tx_data $end
$var reg 1 M! clear $end
$var reg 4 N! tx_packet [3:0] $end
$var reg 8 O! tx_data [7:0] $end
$var reg 32 P! hrdata [31:0] $end
$var reg 8 Q! reg8 [7:0] $end
$var reg 8 R! regC [7:0] $end
$var reg 8 S! regD [7:0] $end
$var reg 16 T! reg4 [15:0] $end
$var reg 16 U! reg6 [15:0] $end
$var reg 32 V! buffer [31:0] $end
$var reg 32 W! next_hrdata [31:0] $end
$var reg 48 X! next_reg [47:0] $end
$var reg 48 Y! register [47:0] $end
$var reg 4 Z! prev_haddr [3:0] $end
$var reg 4 [! size [3:0] $end
$var reg 4 \! prev_size [3:0] $end
$var reg 3 ]! unused [2:0] $end
$var reg 2 ^! prev_hsize [1:0] $end
$var reg 2 _! prev_htrans [1:0] $end
$var reg 1 `! hwready $end
$var reg 1 a! hrready $end
$var reg 1 b! hr_avail $end
$var reg 1 c! next_hresp $end
$var reg 1 d! prev_hresp $end
$var reg 1 e! prev_hresp_high $end
$var reg 1 f! hresp_high $end
$var reg 1 g! prev_hwrite $end
$var reg 1 h! prev_clear $end
$var reg 1 i! in $end
$var reg 1 j! out $end
$var reg 1 k! ack $end
$var reg 1 l! data0 $end
$var reg 1 m! data1 $end

$scope begin address_checker $end
$upscope $end

$scope begin comb_reg $end
$upscope $end

$scope begin reg4_logic $end
$upscope $end

$scope begin regC_logic $end
$upscope $end

$scope begin regD_logic $end
$upscope $end

$scope module read_fsm $end
$var wire 1 ` clk $end
$var wire 1 a n_rst $end
$var wire 1 n! hresp $end
$var wire 1 c hwrite $end
$var wire 1 b hsel $end
$var wire 1 s haddr [3] $end
$var wire 1 t haddr [2] $end
$var wire 1 u haddr [1] $end
$var wire 1 v haddr [0] $end
$var wire 1 i hsize [1] $end
$var wire 1 j hsize [0] $end
$var wire 1 ~ rx_data [7] $end
$var wire 1 !! rx_data [6] $end
$var wire 1 "! rx_data [5] $end
$var wire 1 #! rx_data [4] $end
$var wire 1 $! rx_data [3] $end
$var wire 1 %! rx_data [2] $end
$var wire 1 &! rx_data [1] $end
$var wire 1 '! rx_data [0] $end
$var reg 1 o! hrready $end
$var reg 1 p! get_rx_data $end
$var reg 1 q! hr_avail $end
$var reg 32 r! buffer [31:0] $end
$var reg 4 s! state [3:0] $end
$var reg 4 t! next_state [3:0] $end
$var reg 32 u! next_buffer [31:0] $end
$upscope $end

$scope module write_fsm $end
$var wire 1 ` clk $end
$var wire 1 a n_rst $end
$var wire 1 v! hresp $end
$var wire 1 w! prev_hwrite $end
$var wire 1 b hsel $end
$var wire 1 x! prev_haddr [3] $end
$var wire 1 y! prev_haddr [2] $end
$var wire 1 z! prev_haddr [1] $end
$var wire 1 {! prev_haddr [0] $end
$var wire 1 |! prev_hsize [1] $end
$var wire 1 }! prev_hsize [0] $end
$var wire 1 (! hwdata [31] $end
$var wire 1 )! hwdata [30] $end
$var wire 1 *! hwdata [29] $end
$var wire 1 +! hwdata [28] $end
$var wire 1 ,! hwdata [27] $end
$var wire 1 -! hwdata [26] $end
$var wire 1 .! hwdata [25] $end
$var wire 1 /! hwdata [24] $end
$var wire 1 0! hwdata [23] $end
$var wire 1 1! hwdata [22] $end
$var wire 1 2! hwdata [21] $end
$var wire 1 3! hwdata [20] $end
$var wire 1 4! hwdata [19] $end
$var wire 1 5! hwdata [18] $end
$var wire 1 6! hwdata [17] $end
$var wire 1 7! hwdata [16] $end
$var wire 1 8! hwdata [15] $end
$var wire 1 9! hwdata [14] $end
$var wire 1 :! hwdata [13] $end
$var wire 1 ;! hwdata [12] $end
$var wire 1 <! hwdata [11] $end
$var wire 1 =! hwdata [10] $end
$var wire 1 >! hwdata [9] $end
$var wire 1 ?! hwdata [8] $end
$var wire 1 @! hwdata [7] $end
$var wire 1 A! hwdata [6] $end
$var wire 1 B! hwdata [5] $end
$var wire 1 C! hwdata [4] $end
$var wire 1 D! hwdata [3] $end
$var wire 1 E! hwdata [2] $end
$var wire 1 F! hwdata [1] $end
$var wire 1 G! hwdata [0] $end
$var reg 1 ~! hwready $end
$var reg 1 !" store_tx_data $end
$var reg 8 "" tx_data [7:0] $end
$var reg 4 #" state [3:0] $end
$var reg 4 $" next_state [3:0] $end
$var reg 8 %" next_data [7:0] $end
$upscope $end
$upscope $end

$scope module BFM $end
$var parameter 32 &" DATA_WIDTH $end
$var parameter 32 '" ADDR_WIDTH $end
$var parameter 32 (" DATA_SELECT_WIDTH $end
$var parameter 32 )" DATA_WIDTH_BITS $end
$var parameter 32 *" DATA_MAX_BIT $end
$var parameter 32 +" ADDR_MAX_BIT $end
$var parameter 0 ," BUS_DELAY $end
$var parameter 2 -" TRANS_IDLE $end
$var parameter 2 ." TRANS_BUSY $end
$var parameter 2 /" TRANS_NSEQ $end
$var parameter 2 0" TRANS_SEQ $end
$var parameter 3 1" BURST_SINGLE $end
$var parameter 3 2" BURST_INCR $end
$var parameter 3 3" BURST_WRAP4 $end
$var parameter 3 4" BURST_INCR4 $end
$var parameter 3 5" BURST_WRAP8 $end
$var parameter 3 6" BURST_INCR8 $end
$var parameter 3 7" BURST_WRAP16 $end
$var parameter 3 8" BURST_INCR16 $end
$var wire 1 9" clk $end
$var reg 1 :" hsel $end
$var reg 4 ;" haddr [3:0] $end
$var reg 3 <" hsize [2:0] $end
$var reg 2 =" htrans [1:0] $end
$var reg 3 >" hburst [2:0] $end
$var reg 1 ?" hwrite $end
$var reg 32 @" hwdata [31:0] $end
$var wire 1 A" hrdata [31] $end
$var wire 1 B" hrdata [30] $end
$var wire 1 C" hrdata [29] $end
$var wire 1 D" hrdata [28] $end
$var wire 1 E" hrdata [27] $end
$var wire 1 F" hrdata [26] $end
$var wire 1 G" hrdata [25] $end
$var wire 1 H" hrdata [24] $end
$var wire 1 I" hrdata [23] $end
$var wire 1 J" hrdata [22] $end
$var wire 1 K" hrdata [21] $end
$var wire 1 L" hrdata [20] $end
$var wire 1 M" hrdata [19] $end
$var wire 1 N" hrdata [18] $end
$var wire 1 O" hrdata [17] $end
$var wire 1 P" hrdata [16] $end
$var wire 1 Q" hrdata [15] $end
$var wire 1 R" hrdata [14] $end
$var wire 1 S" hrdata [13] $end
$var wire 1 T" hrdata [12] $end
$var wire 1 U" hrdata [11] $end
$var wire 1 V" hrdata [10] $end
$var wire 1 W" hrdata [9] $end
$var wire 1 X" hrdata [8] $end
$var wire 1 Y" hrdata [7] $end
$var wire 1 Z" hrdata [6] $end
$var wire 1 [" hrdata [5] $end
$var wire 1 \" hrdata [4] $end
$var wire 1 ]" hrdata [3] $end
$var wire 1 ^" hrdata [2] $end
$var wire 1 _" hrdata [1] $end
$var wire 1 `" hrdata [0] $end
$var wire 1 a" hresp $end
$var wire 1 b" hready $end
$var reg 32 c" last_hrdata_read [31:0] $end
$var integer 32 d" num_transactions_left $end

$scope fork new_transaction $end
$var reg 1 e" fake $end
$var reg 1 f" write_mode $end
$var reg 4 g" address [3:0] $end
$var reg 32 h" data [31:0] $end
$var reg 1 i" expect_error $end
$var reg 3 j" size [2:0] $end
$var reg 2 k" trans [1:0] $end
$var reg 3 l" burst [2:0] $end
$var reg 1 m" verify $end
$upscope $end

$scope fork bus_state $end
$var reg 1 n" addr_active $end
$var reg 1 o" data_active $end
$var integer 32 p" current_addr_transaction_num $end
$var integer 32 q" current_data_transaction_num $end

$scope fork current_addr_transaction $end
$var reg 1 r" fake $end
$var reg 1 s" write_mode $end
$var reg 4 t" address [3:0] $end
$var reg 32 u" data [31:0] $end
$var reg 1 v" expect_error $end
$var reg 3 w" size [2:0] $end
$var reg 2 x" trans [1:0] $end
$var reg 3 y" burst [2:0] $end
$var reg 1 z" verify $end
$upscope $end

$scope fork current_data_transaction $end
$var reg 1 {" fake $end
$var reg 1 |" write_mode $end
$var reg 4 }" address [3:0] $end
$var reg 32 ~" data [31:0] $end
$var reg 1 !# expect_error $end
$var reg 3 "# size [2:0] $end
$var reg 2 ## trans [1:0] $end
$var reg 3 $# burst [2:0] $end
$var reg 1 %# verify $end
$upscope $end
$upscope $end
$var integer 32 &# i $end
$var integer 32 '# minaddr $end
$var integer 32 (# maxaddr $end

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
$var reg 1 )# sel $end
$var reg 1 *# write $end
$var reg 4 +# addr [3:0] $end
$var reg 1 ,# exp_error $end
$var reg 3 -# size [2:0] $end
$var reg 3 .# burst [2:0] $end
$var reg 1 /# verify $end
$var integer 32 0# i $end
$var reg 1 1# wrap $end
$var integer 32 2# burst_size $end
$var integer 32 3# offset $end
$upscope $end

$scope task run_transactions $end
$var integer 32 4# num_transactions $end
$upscope $end

$scope begin DISPATCH_TRANSACTION $end
$upscope $end

$scope begin VERIFY_OUTPUT $end
$upscope $end

$scope function get_last_read $end
$var reg 32 5# get_last_read [31:0] $end
$upscope $end

$scope task wait_done $end
$upscope $end
$upscope $end
$upscope $end

$scope begin std $end
$upscope $end
$enddefinitions $end
#0
$dumpvars
00
01
x2
b0 3
b0 4
b1000000 5
bx 6
b0 7
bx 8
b111 9
bx :
bx ;
bx <
b0 =
0>
1?
x@
0A
0B
0C
0D
0E
0F
0G
0H
0I
0H!
0I!
1J!
0K!
0L!
0M!
b0 N!
b0 O!
b0 P!
b1000000 Q!
b0 R!
b0 S!
b0 T!
b0 U!
b0 V!
b0 W!
b0 X!
b0 Y!
b0 Z!
bx [!
b1 \!
bx ]!
b0 ^!
b0 _!
1`!
1a!
0b!
xc!
0d!
0e!
0f!
0g!
0h!
0i!
0j!
0k!
0l!
0m!
1o!
0p!
0q!
b0 r!
b0 s!
b0 t!
b0 u!
1~!
0!"
b0 ""
b0 #"
b0 $"
b0 %"
x:"
bx ;"
bx <"
bx ="
bx >"
x?"
bx @"
bx c"
x)#
x*#
bx +#
x,#
bx -#
bx .#
x/#
x1#
bx 5#
bx J
bx K
bx L
bx M
bx N
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
bx Z
bx [
bx \
bx ]
bx ^
bx e"
bx f"
bx g"
bx h"
bx i"
bx j"
bx k"
bx l"
bx m"
b0 n"
b0 o"
b0 p"
b0 q"
b0 r"
b0 s"
b0 t"
b0 u"
b0 v"
b0 w"
b0 x"
b0 y"
b0 z"
b0 {"
b0 |"
b0 }"
b0 ~"
b0 !#
b0 "#
b0 ##
b0 $#
b0 %#
b1111101000 "
b0 #
b1 $
b10 %
b100 &
b1000 '
b0 (
b1 )
b10 *
b11 +
b100 ,
b101 -
b110 .
b111 /
b100 &"
b100 '"
b10 ("
b100000 )"
b11111 *"
b11 +"
b0 -"
b1 ."
b10 /"
b11 0"
b0 1"
b1 2"
b10 3"
b11 4"
b100 5"
b101 6"
b110 7"
b111 8"
r10 !
r0.8 ,"
b0 d"
bx 0#
bx 2#
bx 3#
b0 4#
b0 &#
b0 '#
b0 (#
b0 O
b0 _
1b"
0a"
0`"
0_"
0^"
0]"
0\"
0["
0Z"
0Y"
0X"
0W"
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
09"
xG!
xF!
xE!
xD!
xC!
xB!
xA!
x@!
x?!
x>!
x=!
x<!
x;!
x:!
x9!
x8!
x7!
x6!
x5!
x4!
x3!
x2!
x1!
x0!
x/!
x.!
x-!
x,!
x+!
x*!
x)!
x(!
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
1w
xv
xu
xt
xs
1r
1q
1p
xo
xn
xm
xl
xk
xj
xi
0h
0g
0f
0e
0d
xc
xb
0a
0`
0}!
0|!
0{!
0z!
0y!
0x!
0w!
0v!
0n!
$end
#5000
10
1`
19"
#5800
0:"
b0 ;"
b0 <"
b0 ="
b0 >"
0?"
b0 @"
b0 <
0@
b0 8
b0 :
b0 ;
b0 6
02
0o
0n
0m
b0 ]!
0c
0v
0u
0t
0s
0j
0i
0l
0k
0G!
0F!
0E!
0D!
0C!
0B!
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
0b
b1 [!
#10000
00
0`
09"
#15000
10
1`
19"
#20000
00
0`
09"
11
1a
#25000
10
1`
19"
#30000
00
0`
09"
#35000
10
1`
19"
#40000
00
0`
09"
b1100 S
b0 T
b1 U
1)#
1*#
b1100 +#
0,#
b0 -#
b0 .#
0/#
b1 f"
b0 e"
b0 j"
b0 l"
b0 i"
b0 m"
b0 3#
b1100 g"
b10 k"
b1 h"
b1100 P
b0 Q
b1 R
0*#
1/#
b0 f"
b1 m"
b10 _
b10 4#
#45000
10
1`
19"
#50000
00
0`
09"
b10 d"
#55000
10
1`
19"
b1 d"
b1 n"
b1 s"
b1100 t"
b1 u"
b10 x"
b1 p"
#55800
1:"
b1100 ;"
1?"
b10 ="
b10 :
1@
b1100 6
12
1c
1t
1s
1k
1b
b1001 $"
#60000
00
0`
09"
b0 S
b10 T
b10010001101000101011001111000 U
1*#
b0 +#
b10 -#
0/#
b1 f"
b10 j"
b0 m"
b0 g"
b10010001101000101011001111000 h"
b0 P
b10 Q
b10010001101000101011001111000 R
0*#
1/#
b0 f"
b1 m"
#65000
10
1`
19"
b1 o"
b1 |"
b1100 }"
b1 ~"
b10 ##
b1 q"
b0 d"
b0 s"
b1 z"
b10 p"
b1001 #"
b1100 Z!
1g!
b10 _!
1y!
1x!
1w!
b0 $"
b1010 $"
#65800
0:"
b0 ;"
b0 ="
0?"
1:"
b1100 ;"
b10 ="
b1 @"
b1 <
0@
1G!
0c
b0 $"
b1 %"
b1010 $"
b1 W!
b1 R!
b1 N!
b0 N!
b11 N!
b11 7
b100000000000000000000000000000000 X!
b0 W!
b1 W!
#70000
00
0`
09"
b10 d"
#75000
10
1`
19"
b0 |"
b1 %#
b10 q"
b1 d"
b1 s"
b0 t"
b10010001101000101011001111000 u"
b10 w"
b0 z"
b11 p"
b1 P!
b100000000000000000000000000000000 Y!
0g!
b1010 #"
b1 ""
b1 O!
b1 =
b1 3
1`"
0w!
b0 $"
1!"
b0 N!
b0 R!
b0 X!
b0 W!
b0 7
1L!
1C
#75800
0:"
b0 ;"
b0 ="
b0 @"
1:"
1?"
b10 <"
b10 ="
b10 ;
1@
b0 <
b0 6
1c
0t
0s
0G!
1i
0!"
1!"
b0 [!
b1 W!
#80000
00
0`
09"
b1 c"
b1 (#
b1100 S
b101 U
1*#
b1100 +#
0/#
b1 f"
b0 m"
b1100 g"
b101 h"
b1100 P
bx R
0*#
1/#
b0 f"
b1 m"
bx h"
b1 _
b1 4#
#85000
10
1`
19"
b1 |"
b0 }"
b10010001101000101011001111000 ~"
b10 "#
b0 %#
b11 q"
b0 d"
b0 s"
b1 z"
b100 p"
b0 #"
b0 Y!
b10 ^!
b0 Z!
1g!
0y!
0x!
1|!
1w!
b0 \!
0!"
0L!
0C
#85800
0:"
b0 <"
b0 ="
0?"
1:"
b10 <"
b10 ="
b10010001101000101011001111000 @"
b10010001101000101011001111000 <
0@
1D!
1C!
1B!
1A!
1>!
1=!
1;!
19!
15!
13!
12!
1.!
1+!
0c
b1 t!
#90000
00
0`
09"
b1 d"
#95000
10
1`
19"
b0 |"
b1 %#
b100 q"
b0 d"
b1 s"
b1100 t"
b101 u"
b0 z"
b101 p"
b1 s!
0g!
0w!
b1 $"
1p!
0o!
b10 t!
0a!
1K!
1F
0J!
0?
0b"
#95800
0:"
b0 <"
b0 ="
b0 @"
1:"
b1100 ;"
1?"
b10 <"
b10 ="
1@
b1100 6
b0 <
1c
0D!
0C!
0B!
0A!
0>!
0=!
0;!
09!
05!
03!
02!
0.!
0+!
1t
1s
b0 $"
b1 $"
b1 t!
0p!
1o!
1p!
0o!
b10 t!
#100000
00
0`
09"
#105000
10
1`
19"
b1 #"
b1100 Z!
1g!
b10 s!
1y!
1x!
1w!
0p!
1o!
0o!
b11 t!
b0 $"
0~!
b0 %"
b10 $"
0`!
0K!
0F
#105800
0:"
b0 ;"
b0 <"
b0 ="
0?"
1:"
b1100 ;"
1?"
b10 <"
b10 ="
#110000
00
0`
09"
#115000
10
1`
19"
b11 s!
b10 #"
b0 ""
b0 O!
b0 3
b0 $"
1~!
1!"
0~!
b11 $"
1o!
1p!
0o!
b100 t!
1K!
1L!
1C
1F
#115800
0:"
b0 ;"
b0 <"
b0 ="
0?"
1:"
b1100 ;"
1?"
b10 <"
b10 ="
#120000
00
0`
09"
#125000
10
1`
19"
b11 #"
b100 s!
0p!
1o!
b101 t!
0o!
b0 $"
0!"
1~!
0~!
b100 $"
0L!
0K!
0F
0C
#125800
0:"
b0 ;"
b0 <"
b0 ="
0?"
1:"
b1100 ;"
1?"
b10 <"
b10 ="
#130000
00
0`
09"
#135000
10
1`
19"
b101 s!
b100 #"
b0 $"
1~!
b101 $"
1!"
0~!
1o!
1p!
0o!
b110 t!
1K!
1L!
1C
1F
#135800
0:"
b0 ;"
b0 <"
b0 ="
0?"
1:"
b1100 ;"
1?"
b10 <"
b10 ="
#140000
00
0`
09"
#145000
10
1`
19"
b101 #"
b110 s!
0p!
1o!
0o!
b111 t!
b0 $"
0!"
1~!
0~!
b110 $"
0L!
0K!
0F
0C
#145800
0:"
b0 ;"
b0 <"
b0 ="
0?"
1:"
b1100 ;"
1?"
b10 <"
b10 ="
#150000
00
0`
09"
#155000
10
1`
19"
b111 s!
b110 #"
b0 $"
1~!
1!"
0~!
b111 $"
1o!
1p!
0o!
b1000 t!
1K!
1L!
1C
1F
#155800
0:"
b0 ;"
b0 <"
b0 ="
0?"
1:"
b1100 ;"
1?"
b10 <"
b10 ="
#160000
00
0`
09"
#165000
10
1`
19"
b111 #"
b1000 s!
0p!
1o!
0o!
b1001 t!
b0 $"
0!"
1~!
0~!
0L!
0K!
0F
0C
#165800
0:"
b0 ;"
b0 <"
b0 ="
0?"
1:"
b1100 ;"
1?"
b10 <"
b10 ="
#170000
00
0`
09"
#175000
10
1`
19"
b1001 s!
b0 #"
1~!
1o!
1q!
b0 t!
1b!
1a!
1`!
1J!
1?
1b"
#175800
0:"
b0 ;"
b0 <"
b0 ="
0?"
1:"
b1100 ;"
1?"
b10 <"
b10 ="
#180000
00
0`
09"
b100 (#
#185000
10
1`
19"
b1 |"
b1100 }"
b101 ~"
b0 %#
b101 q"
b0 n"
b0 s"
b0 t"
b0 w"
b0 u"
b0 x"
b0 s!
0q!
0b!
#185800
0:"
b0 ;"
b0 <"
b0 ="
0?"
1:"
b101 @"
b101 <
0@
b0 :
b0 ;
b0 6
0c
0t
0s
0i
0k
1G!
1E!
b1010 t!
b1 [!
b0 W!
#190000
00
0`
09"
#195000
10
1`
19"
b0 o"
b0 |"
b0 }"
b0 ~"
b0 "#
b0 ##
b0 P!
b0 ^!
b0 Z!
0g!
b0 _!
b1010 s!
b0 =
0`"
0y!
0x!
0|!
0w!
b1001 $"
1p!
0o!
b1011 t!
b1 \!
0a!
1K!
1F
0J!
0?
0b"
#195800
0:"
b0 @"
b0 <
02
0G!
0E!
0b
b1010 t!
0p!
1o!
1p!
0o!
b1011 t!
b0 $"
#200000
00
0`
09"
