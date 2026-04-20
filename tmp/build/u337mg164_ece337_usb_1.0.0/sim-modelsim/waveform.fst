$date
	Mon Apr 20 06:47:20 2026
$end
$version
	QuestaSim Version 2021.4
$end
$timescale
	1ps
$end

$scope module tb_usb $end
$var parameter 0 ! CLK_PERIOD $end
$var parameter 4 " BUFF_ADDR $end
$var parameter 4 # STAT_ADDR $end
$var parameter 4 $ ERR_ADDR $end
$var parameter 4 % OCC_ADDR $end
$var parameter 4 & TX_ADDR $end
$var parameter 4 ' FLUSH_ADDR $end
$var parameter 4 ( PID_OUT $end
$var parameter 4 ) PID_IN $end
$var parameter 4 * PID_DATA0 $end
$var parameter 4 + PID_DATA1 $end
$var parameter 4 , PID_ACK $end
$var parameter 4 - PID_NAK $end
$var parameter 4 . PID_STALL $end
$var reg 1 / clk $end
$var reg 1 0 n_rst $end
$var reg 1 1 hsel $end
$var reg 1 2 hwrite $end
$var reg 1 3 hready $end
$var reg 1 4 hresp $end
$var reg 2 5 htrans [1:0] $end
$var reg 2 6 hsize [1:0] $end
$var reg 4 7 haddr [3:0] $end
$var reg 32 8 hwdata [31:0] $end
$var reg 32 9 hrdata [31:0] $end
$var reg 1 : dp_in $end
$var reg 1 ; dm_in $end
$var reg 1 < dp_out $end
$var reg 1 = dm_out $end
$var reg 1 > d_mode $end
$var reg 32 ? read_val [31:0] $end
$var integer 32 @ test_case_num $end

$scope task ahb_write $end
$var reg 4 A addr [3:0] $end
$var reg 32 B data [31:0] $end
$var reg 2 C size [1:0] $end
$upscope $end

$scope task ahb_read $end
$var reg 4 D addr [3:0] $end
$var reg 32 E data_out [31:0] $end
$var reg 2 F size [1:0] $end
$upscope $end

$scope module DUT $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 I dp_in $end
$var wire 1 J dm_in $end
$var wire 1 K hsel $end
$var wire 1 L hwrite $end
$var wire 1 M htrans [1] $end
$var wire 1 N htrans [0] $end
$var wire 1 O hsize [1] $end
$var wire 1 P hsize [0] $end
$var wire 1 Q hburst [2] $end
$var wire 1 R hburst [1] $end
$var wire 1 S hburst [0] $end
$var wire 1 T haddr [3] $end
$var wire 1 U haddr [2] $end
$var wire 1 V haddr [1] $end
$var wire 1 W haddr [0] $end
$var wire 1 X hwdata [31] $end
$var wire 1 Y hwdata [30] $end
$var wire 1 Z hwdata [29] $end
$var wire 1 [ hwdata [28] $end
$var wire 1 \ hwdata [27] $end
$var wire 1 ] hwdata [26] $end
$var wire 1 ^ hwdata [25] $end
$var wire 1 _ hwdata [24] $end
$var wire 1 ` hwdata [23] $end
$var wire 1 a hwdata [22] $end
$var wire 1 b hwdata [21] $end
$var wire 1 c hwdata [20] $end
$var wire 1 d hwdata [19] $end
$var wire 1 e hwdata [18] $end
$var wire 1 f hwdata [17] $end
$var wire 1 g hwdata [16] $end
$var wire 1 h hwdata [15] $end
$var wire 1 i hwdata [14] $end
$var wire 1 j hwdata [13] $end
$var wire 1 k hwdata [12] $end
$var wire 1 l hwdata [11] $end
$var wire 1 m hwdata [10] $end
$var wire 1 n hwdata [9] $end
$var wire 1 o hwdata [8] $end
$var wire 1 p hwdata [7] $end
$var wire 1 q hwdata [6] $end
$var wire 1 r hwdata [5] $end
$var wire 1 s hwdata [4] $end
$var wire 1 t hwdata [3] $end
$var wire 1 u hwdata [2] $end
$var wire 1 v hwdata [1] $end
$var wire 1 w hwdata [0] $end
$var reg 1 x dp_out $end
$var reg 1 y dm_out $end
$var reg 1 z d_mode $end
$var reg 1 { hresp $end
$var reg 1 | hready $end
$var reg 32 } hrdata [31:0] $end
$var reg 1 ~ rx_data_ready $end
$var reg 1 !! rx_transfer_active $end
$var reg 1 "! rx_error $end
$var reg 1 #! flush $end
$var reg 1 $! store_rx_packet_data $end
$var reg 1 %! get_rx_data $end
$var reg 1 &! store_tx_data $end
$var reg 1 '! clear $end
$var reg 1 (! get_tx_packet_data $end
$var reg 1 )! tx_transfer_active $end
$var reg 1 *! tx_error $end
$var reg 3 +! rx_packet [2:0] $end
$var reg 4 ,! tx_packet [3:0] $end
$var reg 7 -! buffer_occ [6:0] $end
$var reg 8 .! rx_packet_data [7:0] $end
$var reg 8 /! rx_data [7:0] $end
$var reg 8 0! tx_data [7:0] $end
$var reg 8 1! tx_packet_data [7:0] $end

$scope module sub $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 K hsel $end
$var wire 1 L hwrite $end
$var wire 1 2! rx_transfer_active $end
$var wire 1 3! rx_data_ready $end
$var wire 1 4! rx_error $end
$var wire 1 5! tx_transfer_active $end
$var wire 1 6! tx_error $end
$var wire 1 O hsize [1] $end
$var wire 1 P hsize [0] $end
$var wire 1 7! rx_packet [2] $end
$var wire 1 8! rx_packet [1] $end
$var wire 1 9! rx_packet [0] $end
$var wire 1 T haddr [3] $end
$var wire 1 U haddr [2] $end
$var wire 1 V haddr [1] $end
$var wire 1 W haddr [0] $end
$var wire 1 :! buffer_occ [6] $end
$var wire 1 ;! buffer_occ [5] $end
$var wire 1 <! buffer_occ [4] $end
$var wire 1 =! buffer_occ [3] $end
$var wire 1 >! buffer_occ [2] $end
$var wire 1 ?! buffer_occ [1] $end
$var wire 1 @! buffer_occ [0] $end
$var wire 1 A! rx_data [7] $end
$var wire 1 B! rx_data [6] $end
$var wire 1 C! rx_data [5] $end
$var wire 1 D! rx_data [4] $end
$var wire 1 E! rx_data [3] $end
$var wire 1 F! rx_data [2] $end
$var wire 1 G! rx_data [1] $end
$var wire 1 H! rx_data [0] $end
$var wire 1 X hwdata [31] $end
$var wire 1 Y hwdata [30] $end
$var wire 1 Z hwdata [29] $end
$var wire 1 [ hwdata [28] $end
$var wire 1 \ hwdata [27] $end
$var wire 1 ] hwdata [26] $end
$var wire 1 ^ hwdata [25] $end
$var wire 1 _ hwdata [24] $end
$var wire 1 ` hwdata [23] $end
$var wire 1 a hwdata [22] $end
$var wire 1 b hwdata [21] $end
$var wire 1 c hwdata [20] $end
$var wire 1 d hwdata [19] $end
$var wire 1 e hwdata [18] $end
$var wire 1 f hwdata [17] $end
$var wire 1 g hwdata [16] $end
$var wire 1 h hwdata [15] $end
$var wire 1 i hwdata [14] $end
$var wire 1 j hwdata [13] $end
$var wire 1 k hwdata [12] $end
$var wire 1 l hwdata [11] $end
$var wire 1 m hwdata [10] $end
$var wire 1 n hwdata [9] $end
$var wire 1 o hwdata [8] $end
$var wire 1 p hwdata [7] $end
$var wire 1 q hwdata [6] $end
$var wire 1 r hwdata [5] $end
$var wire 1 s hwdata [4] $end
$var wire 1 t hwdata [3] $end
$var wire 1 u hwdata [2] $end
$var wire 1 v hwdata [1] $end
$var wire 1 w hwdata [0] $end
$var reg 1 I! d_mode $end
$var reg 1 J! hresp $end
$var reg 1 K! hready $end
$var reg 1 L! get_rx_data $end
$var reg 1 M! store_tx_data $end
$var reg 1 N! clear $end
$var reg 4 O! tx_packet [3:0] $end
$var reg 8 P! tx_data [7:0] $end
$var reg 32 Q! hrdata [31:0] $end
$var reg 8 R! reg8 [7:0] $end
$var reg 8 S! regC [7:0] $end
$var reg 8 T! regD [7:0] $end
$var reg 16 U! reg4 [15:0] $end
$var reg 16 V! reg6 [15:0] $end
$var reg 32 W! buffer [31:0] $end
$var reg 32 X! next_hrdata [31:0] $end
$var reg 16 Y! next_reg [15:0] $end
$var reg 16 Z! register [15:0] $end
$var reg 4 [! prev_haddr [3:0] $end
$var reg 4 \! size [3:0] $end
$var reg 4 ]! prev_size [3:0] $end
$var reg 2 ^! prev_hsize [1:0] $end
$var reg 1 _! hwready $end
$var reg 1 `! hrready $end
$var reg 1 a! hr_avail $end
$var reg 1 b! prev_hresp $end
$var reg 1 c! prev_hresp_high $end
$var reg 1 d! hresp_high $end
$var reg 1 e! prev_hwrite $end
$var reg 1 f! prev_clear $end
$var reg 1 g! in $end
$var reg 1 h! out $end
$var reg 1 i! ack $end
$var reg 1 j! data0 $end
$var reg 1 k! data1 $end

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
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 l! hresp $end
$var wire 1 L hwrite $end
$var wire 1 K hsel $end
$var wire 1 m! hready $end
$var wire 1 T haddr [3] $end
$var wire 1 U haddr [2] $end
$var wire 1 V haddr [1] $end
$var wire 1 W haddr [0] $end
$var wire 1 O hsize [1] $end
$var wire 1 P hsize [0] $end
$var wire 1 A! rx_data [7] $end
$var wire 1 B! rx_data [6] $end
$var wire 1 C! rx_data [5] $end
$var wire 1 D! rx_data [4] $end
$var wire 1 E! rx_data [3] $end
$var wire 1 F! rx_data [2] $end
$var wire 1 G! rx_data [1] $end
$var wire 1 H! rx_data [0] $end
$var reg 1 n! hrready $end
$var reg 1 o! get_rx_data $end
$var reg 1 p! hr_avail $end
$var reg 32 q! buffer [31:0] $end
$var reg 5 r! state [4:0] $end
$var reg 5 s! next_state [4:0] $end
$var reg 32 t! next_buffer [31:0] $end
$upscope $end

$scope module write_fsm $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 u! hresp $end
$var wire 1 K hsel $end
$var wire 1 L hwrite $end
$var wire 1 v! hready $end
$var wire 1 T haddr [3] $end
$var wire 1 U haddr [2] $end
$var wire 1 V haddr [1] $end
$var wire 1 W haddr [0] $end
$var wire 1 O hsize [1] $end
$var wire 1 P hsize [0] $end
$var wire 1 X hwdata [31] $end
$var wire 1 Y hwdata [30] $end
$var wire 1 Z hwdata [29] $end
$var wire 1 [ hwdata [28] $end
$var wire 1 \ hwdata [27] $end
$var wire 1 ] hwdata [26] $end
$var wire 1 ^ hwdata [25] $end
$var wire 1 _ hwdata [24] $end
$var wire 1 ` hwdata [23] $end
$var wire 1 a hwdata [22] $end
$var wire 1 b hwdata [21] $end
$var wire 1 c hwdata [20] $end
$var wire 1 d hwdata [19] $end
$var wire 1 e hwdata [18] $end
$var wire 1 f hwdata [17] $end
$var wire 1 g hwdata [16] $end
$var wire 1 h hwdata [15] $end
$var wire 1 i hwdata [14] $end
$var wire 1 j hwdata [13] $end
$var wire 1 k hwdata [12] $end
$var wire 1 l hwdata [11] $end
$var wire 1 m hwdata [10] $end
$var wire 1 n hwdata [9] $end
$var wire 1 o hwdata [8] $end
$var wire 1 p hwdata [7] $end
$var wire 1 q hwdata [6] $end
$var wire 1 r hwdata [5] $end
$var wire 1 s hwdata [4] $end
$var wire 1 t hwdata [3] $end
$var wire 1 u hwdata [2] $end
$var wire 1 v hwdata [1] $end
$var wire 1 w hwdata [0] $end
$var reg 1 w! hwready $end
$var reg 1 x! store_tx_data $end
$var reg 8 y! tx_data [7:0] $end
$var reg 5 z! state [4:0] $end
$var reg 5 {! next_state [4:0] $end
$var reg 8 |! next_data [7:0] $end
$upscope $end
$upscope $end

$scope module rx $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 I dp_in $end
$var wire 1 J dm_in $end
$var wire 1 }! buffer_occ [6] $end
$var wire 1 ~! buffer_occ [5] $end
$var wire 1 !" buffer_occ [4] $end
$var wire 1 "" buffer_occ [3] $end
$var wire 1 #" buffer_occ [2] $end
$var wire 1 $" buffer_occ [1] $end
$var wire 1 %" buffer_occ [0] $end
$var reg 3 &" rx_packet [2:0] $end
$var reg 8 '" rx_packet_data [7:0] $end
$var reg 1 (" rx_data_ready $end
$var reg 1 )" rx_transfer_active $end
$var reg 1 *" rx_error $end
$var reg 1 +" store_rx_packet_data $end
$var reg 1 ," flush $end
$var reg 1 -" synced_p $end
$var reg 1 ." synced_m $end
$var reg 1 /" signal $end
$var reg 1 0" new_packet $end
$var reg 1 1" flag4 $end
$var reg 1 2" first_in $end
$var reg 1 3" next_in $end
$var reg 1 4" pserial_in $end
$var reg 1 5" mserial_in $end
$var reg 1 6" samp_flag $end
$var reg 1 7" enable_shift $end
$var reg 1 8" byte_shift $end
$var reg 1 9" bits_shift $end
$var reg 1 :" byte_done $end
$var reg 1 ;" bits_done $end
$var reg 3 <" pbits [2:0] $end
$var reg 3 =" mbits [2:0] $end
$var reg 5 >" samp_count [4:0] $end
$var reg 8 ?" byte_in [7:0] $end

$scope module sync_p $end
$var parameter 32 @" RST_VAL $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 I async_in $end
$var reg 1 A" sync_out $end
$var reg 1 B" flip1_out $end
$upscope $end

$scope module sync_m $end
$var parameter 32 C" RST_VAL $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 J async_in $end
$var reg 1 D" sync_out $end
$var reg 1 E" flip1_out $end
$upscope $end

$scope module countTo4 $end
$var parameter 32 F" SIZE $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 G" clear $end
$var wire 1 H" count_enable $end
$var wire 1 I" rollover_val [2] $end
$var wire 1 J" rollover_val [1] $end
$var wire 1 K" rollover_val [0] $end
$var reg 3 L" count_out [2:0] $end
$var reg 1 M" rollover_flag $end
$var reg 3 N" next_out [2:0] $end
$var reg 1 O" next_flag $end

$scope begin sequential_logic $end
$upscope $end

$scope begin next_state_combinational $end
$upscope $end
$upscope $end

$scope module sample $end
$var parameter 32 P" SIZE $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 Q" clear $end
$var wire 1 R" count_enable $end
$var wire 1 S" rollover_val [4] $end
$var wire 1 T" rollover_val [3] $end
$var wire 1 U" rollover_val [2] $end
$var wire 1 V" rollover_val [1] $end
$var wire 1 W" rollover_val [0] $end
$var reg 5 X" count_out [4:0] $end
$var reg 1 Y" rollover_flag $end
$var reg 5 Z" next_out [4:0] $end
$var reg 1 [" next_flag $end

$scope begin sequential_logic $end
$upscope $end

$scope begin next_state_combinational $end
$upscope $end
$upscope $end

$scope module byteShifter $end
$var parameter 32 \" SIZE $end
$var parameter 32 ]" MSB_FIRST $end
$var parameter 32 ^" PRIORITY $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 _" shift_enable $end
$var wire 1 `" load_enable $end
$var wire 1 a" serial_in $end
$var wire 1 b" parallel_in [7] $end
$var wire 1 c" parallel_in [6] $end
$var wire 1 d" parallel_in [5] $end
$var wire 1 e" parallel_in [4] $end
$var wire 1 f" parallel_in [3] $end
$var wire 1 g" parallel_in [2] $end
$var wire 1 h" parallel_in [1] $end
$var wire 1 i" parallel_in [0] $end
$var reg 1 j" serial_out $end
$var reg 8 k" parallel_out [7:0] $end
$var reg 8 l" n_parallel [7:0] $end
$upscope $end

$scope module byteCounter $end
$var parameter 32 m" SIZE $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 n" clear $end
$var wire 1 o" count_enable $end
$var wire 1 p" rollover_val [3] $end
$var wire 1 q" rollover_val [2] $end
$var wire 1 r" rollover_val [1] $end
$var wire 1 s" rollover_val [0] $end
$var reg 4 t" count_out [3:0] $end
$var reg 1 u" rollover_flag $end
$var reg 4 v" next_out [3:0] $end
$var reg 1 w" next_flag $end

$scope begin sequential_logic $end
$upscope $end

$scope begin next_state_combinational $end
$upscope $end
$upscope $end

$scope module pbitShifter $end
$var parameter 32 x" SIZE $end
$var parameter 32 y" MSB_FIRST $end
$var parameter 32 z" PRIORITY $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 {" shift_enable $end
$var wire 1 |" load_enable $end
$var wire 1 }" serial_in $end
$var wire 1 ~" parallel_in [2] $end
$var wire 1 !# parallel_in [1] $end
$var wire 1 "# parallel_in [0] $end
$var reg 1 ## serial_out $end
$var reg 3 $# parallel_out [2:0] $end
$var reg 3 %# n_parallel [2:0] $end
$upscope $end

$scope module mbitShifter $end
$var parameter 32 &# SIZE $end
$var parameter 32 '# MSB_FIRST $end
$var parameter 32 (# PRIORITY $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 )# shift_enable $end
$var wire 1 *# load_enable $end
$var wire 1 +# serial_in $end
$var wire 1 ,# parallel_in [2] $end
$var wire 1 -# parallel_in [1] $end
$var wire 1 .# parallel_in [0] $end
$var reg 1 /# serial_out $end
$var reg 3 0# parallel_out [2:0] $end
$var reg 3 1# n_parallel [2:0] $end
$upscope $end

$scope module countTo3 $end
$var parameter 32 2# SIZE $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 3# clear $end
$var wire 1 4# count_enable $end
$var wire 1 5# rollover_val [1] $end
$var wire 1 6# rollover_val [0] $end
$var reg 2 7# count_out [1:0] $end
$var reg 1 8# rollover_flag $end
$var reg 2 9# next_out [1:0] $end
$var reg 1 :# next_flag $end

$scope begin sequential_logic $end
$upscope $end

$scope begin next_state_combinational $end
$upscope $end
$upscope $end

$scope module rcu $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 ;# new_packet $end
$var wire 1 <# byte_done $end
$var wire 1 =# bits_done $end
$var wire 1 ># pbits [2] $end
$var wire 1 ?# pbits [1] $end
$var wire 1 @# pbits [0] $end
$var wire 1 A# mbits [2] $end
$var wire 1 B# mbits [1] $end
$var wire 1 C# mbits [0] $end
$var wire 1 }! buffer_occ [6] $end
$var wire 1 ~! buffer_occ [5] $end
$var wire 1 !" buffer_occ [4] $end
$var wire 1 "" buffer_occ [3] $end
$var wire 1 #" buffer_occ [2] $end
$var wire 1 $" buffer_occ [1] $end
$var wire 1 %" buffer_occ [0] $end
$var wire 1 D# byte_in [7] $end
$var wire 1 E# byte_in [6] $end
$var wire 1 F# byte_in [5] $end
$var wire 1 G# byte_in [4] $end
$var wire 1 H# byte_in [3] $end
$var wire 1 I# byte_in [2] $end
$var wire 1 J# byte_in [1] $end
$var wire 1 K# byte_in [0] $end
$var reg 1 L# byte_shift $end
$var reg 1 M# bits_shift $end
$var reg 1 N# rx_transfer_active $end
$var reg 1 O# rx_data_ready $end
$var reg 1 P# store_rx_packet_data $end
$var reg 1 Q# rx_error $end
$var reg 1 R# flush $end
$var reg 3 S# rx_packet [2:0] $end
$var reg 8 T# rx_packet_data [7:0] $end
$var reg 7 U# current [6:0] $end
$var reg 7 V# next_state [6:0] $end

$scope fork outs $end
$var reg 1 W# byte_shift $end
$var reg 1 X# bits_shift $end
$var reg 1 Y# active $end
$var reg 1 Z# data_ready $end
$var reg 1 [# store $end
$var reg 1 \# error $end
$var reg 1 ]# flush $end
$var reg 3 ^# pid [2:0] $end
$var reg 8 _# byte1 [7:0] $end
$var reg 8 `# byte2 [7:0] $end
$var reg 8 a# data [7:0] $end
$upscope $end
$var reg 1 b# eop $end

$scope begin states $end
$upscope $end

$scope begin outputs $end

$scope begin SHIFT3 $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end

$scope module tx $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 c# tx_packet [3] $end
$var wire 1 d# tx_packet [2] $end
$var wire 1 e# tx_packet [1] $end
$var wire 1 f# tx_packet [0] $end
$var wire 1 g# buffer_occupancy [6] $end
$var wire 1 h# buffer_occupancy [5] $end
$var wire 1 i# buffer_occupancy [4] $end
$var wire 1 j# buffer_occupancy [3] $end
$var wire 1 k# buffer_occupancy [2] $end
$var wire 1 l# buffer_occupancy [1] $end
$var wire 1 m# buffer_occupancy [0] $end
$var wire 1 n# tx_packet_data [7] $end
$var wire 1 o# tx_packet_data [6] $end
$var wire 1 p# tx_packet_data [5] $end
$var wire 1 q# tx_packet_data [4] $end
$var wire 1 r# tx_packet_data [3] $end
$var wire 1 s# tx_packet_data [2] $end
$var wire 1 t# tx_packet_data [1] $end
$var wire 1 u# tx_packet_data [0] $end
$var reg 1 v# tx_transfer_active $end
$var reg 1 w# tx_error $end
$var reg 1 x# get_tx_packet_data $end
$var reg 1 y# dp_out $end
$var reg 1 z# dm_out $end
$var reg 1 {# next_DP_OUT $end
$var reg 1 |# next_DM_OUT $end
$var reg 8 }# pid_packet [7:0] $end
$var reg 8 ~# packet [7:0] $end
$var reg 5 !$ clk_count [4:0] $end
$var reg 1 "$ bit_clk $end
$var reg 1 #$ enable_timer $end
$var reg 1 $$ end_packet $end
$var reg 1 %$ first $end
$var reg 1 &$ clear $end
$var reg 1 '$ rollover_25 $end
$var reg 1 ($ rollover_8 $end
$var reg 1 )$ serial_out $end
$var reg 1 *$ load_enable $end
$var reg 1 +$ idle $end
$var reg 4 ,$ invert [3:0] $end
$var reg 8 -$ non_flipped [7:0] $end
$var integer 32 .$ i $end
$var integer 32 /$ index $end

$scope begin PID_PACKET_LOGIC $end
$upscope $end

$scope begin BIT_CLK_LOGIC $end
$upscope $end

$scope begin NEXT_DP_LOGIC $end
$upscope $end

$scope begin OUTPUT_ENCODE $end
$upscope $end

$scope module fsm $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 0$ rollover_8 $end
$var wire 1 c# tx_packet [3] $end
$var wire 1 d# tx_packet [2] $end
$var wire 1 e# tx_packet [1] $end
$var wire 1 f# tx_packet [0] $end
$var wire 1 g# buffer_occupancy [6] $end
$var wire 1 h# buffer_occupancy [5] $end
$var wire 1 i# buffer_occupancy [4] $end
$var wire 1 j# buffer_occupancy [3] $end
$var wire 1 k# buffer_occupancy [2] $end
$var wire 1 l# buffer_occupancy [1] $end
$var wire 1 m# buffer_occupancy [0] $end
$var wire 1 1$ pid_packet [7] $end
$var wire 1 2$ pid_packet [6] $end
$var wire 1 3$ pid_packet [5] $end
$var wire 1 4$ pid_packet [4] $end
$var wire 1 5$ pid_packet [3] $end
$var wire 1 6$ pid_packet [2] $end
$var wire 1 7$ pid_packet [1] $end
$var wire 1 8$ pid_packet [0] $end
$var wire 1 n# tx_packet_data [7] $end
$var wire 1 o# tx_packet_data [6] $end
$var wire 1 p# tx_packet_data [5] $end
$var wire 1 q# tx_packet_data [4] $end
$var wire 1 r# tx_packet_data [3] $end
$var wire 1 s# tx_packet_data [2] $end
$var wire 1 t# tx_packet_data [1] $end
$var wire 1 u# tx_packet_data [0] $end
$var wire 1 9$ bit_clk $end
$var reg 1 :$ enable_timer $end
$var reg 1 ;$ tx_transfer_active $end
$var reg 1 <$ end_packet $end
$var reg 1 =$ get_tx_packet_data $end
$var reg 1 >$ first $end
$var reg 1 ?$ clear $end
$var reg 1 @$ tx_error $end
$var reg 1 A$ idle $end
$var reg 8 B$ packet [7:0] $end
$var reg 6 C$ state [5:0] $end
$var reg 6 D$ next_state [5:0] $end

$scope begin FSM_LOGIC $end
$upscope $end

$scope begin FSM_COMB $end
$upscope $end

$scope begin FSM_OUT $end
$upscope $end
$upscope $end

$scope module data_period $end
$var parameter 32 E$ SIZE $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 F$ clear $end
$var wire 1 G$ count_enable $end
$var wire 1 H$ rollover_val [4] $end
$var wire 1 I$ rollover_val [3] $end
$var wire 1 J$ rollover_val [2] $end
$var wire 1 K$ rollover_val [1] $end
$var wire 1 L$ rollover_val [0] $end
$var reg 5 M$ count_out [4:0] $end
$var reg 1 N$ rollover_flag $end
$var reg 5 O$ next_out [4:0] $end
$var reg 1 P$ next_flag $end

$scope begin sequential_logic $end
$upscope $end

$scope begin next_state_combinational $end
$upscope $end
$upscope $end

$scope module byte_counter $end
$var parameter 32 Q$ SIZE $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 R$ clear $end
$var wire 1 S$ count_enable $end
$var wire 1 T$ rollover_val [3] $end
$var wire 1 U$ rollover_val [2] $end
$var wire 1 V$ rollover_val [1] $end
$var wire 1 W$ rollover_val [0] $end
$var reg 4 X$ count_out [3:0] $end
$var reg 1 Y$ rollover_flag $end
$var reg 4 Z$ next_out [3:0] $end
$var reg 1 [$ next_flag $end

$scope begin sequential_logic $end
$upscope $end

$scope begin next_state_combinational $end
$upscope $end
$upscope $end

$scope module load_sr $end
$var parameter 32 \$ SIZE $end
$var parameter 32 ]$ MSB_FIRST $end
$var parameter 32 ^$ PRIORITY $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 _$ shift_enable $end
$var wire 1 `$ load_enable $end
$var wire 1 a$ serial_in $end
$var wire 1 b$ parallel_in [7] $end
$var wire 1 c$ parallel_in [6] $end
$var wire 1 d$ parallel_in [5] $end
$var wire 1 e$ parallel_in [4] $end
$var wire 1 f$ parallel_in [3] $end
$var wire 1 g$ parallel_in [2] $end
$var wire 1 h$ parallel_in [1] $end
$var wire 1 i$ parallel_in [0] $end
$var reg 1 j$ serial_out $end
$var reg 8 k$ parallel_out [7:0] $end
$var reg 8 l$ n_parallel [7:0] $end
$upscope $end
$upscope $end

$scope module buff $end
$var wire 1 G clk $end
$var wire 1 H n_rst $end
$var wire 1 m$ flush $end
$var wire 1 n$ clear $end
$var wire 1 o$ store_rx_packet_data $end
$var wire 1 p$ store_tx_data $end
$var wire 1 q$ get_rx_data $end
$var wire 1 r$ get_tx_packet_data $end
$var wire 1 s$ tx_data [7] $end
$var wire 1 t$ tx_data [6] $end
$var wire 1 u$ tx_data [5] $end
$var wire 1 v$ tx_data [4] $end
$var wire 1 w$ tx_data [3] $end
$var wire 1 x$ tx_data [2] $end
$var wire 1 y$ tx_data [1] $end
$var wire 1 z$ tx_data [0] $end
$var wire 1 {$ rx_packet_data [7] $end
$var wire 1 |$ rx_packet_data [6] $end
$var wire 1 }$ rx_packet_data [5] $end
$var wire 1 ~$ rx_packet_data [4] $end
$var wire 1 !% rx_packet_data [3] $end
$var wire 1 "% rx_packet_data [2] $end
$var wire 1 #% rx_packet_data [1] $end
$var wire 1 $% rx_packet_data [0] $end
$var reg 7 %% buffer_occupancy [6:0] $end
$var reg 8 &% rx_data [7:0] $end
$var reg 8 '% tx_packet_data [7:0] $end
$var reg 7 (% write_index [6:0] $end
$var reg 7 )% read_index [6:0] $end
$var reg 7 *% next_write_index [6:0] $end
$var reg 7 +% next_read_index [6:0] $end
$var reg 8 ,% fifo_in [7:0] $end
$var reg 512 -% fifo [511:0] $end
$var reg 512 .% next_fifo [511:0] $end

$scope begin NEXT_WRITE_LOGIC $end
$upscope $end

$scope begin WRITE $end
$upscope $end

$scope begin PACKET_SELECT $end
$upscope $end

$scope begin NEXT_FIFO $end
$upscope $end

$scope begin FIFO $end
$upscope $end

$scope begin NEXT_READ_LOGIC $end
$upscope $end

$scope begin READ $end
$upscope $end

$scope begin POP $end
$upscope $end

$scope begin BUFFER_OCCUPANCY $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end

$scope begin std $end
$upscope $end

$scope begin tx_fsm_sv_unit $end
$var parameter 4 /% DATA0 $end
$var parameter 4 0% DATA1 $end
$var parameter 4 1% ACK $end
$var parameter 4 2% NAK $end
$var parameter 4 3% STALL $end
$upscope $end
$enddefinitions $end
#0
$dumpvars
0/
00
01
02
13
04
b0 5
bx 6
bx 7
bx 8
b0 9
x:
x;
1<
0=
0>
bx ?
1x
0y
0z
0{
1|
b0 }
0~
0!!
0"!
0#!
0$!
0%!
0&!
0'!
0(!
0)!
0*!
b0 +!
b0 ,!
b0 -!
b0 .!
b0 /!
b0 0!
b0 1!
0I!
0J!
1K!
0L!
0M!
0N!
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
bx \!
b1 ]!
b0 ^!
1_!
1`!
0a!
0b!
0c!
0d!
0e!
0f!
0g!
0h!
0i!
0j!
0k!
1n!
0o!
0p!
b0 q!
b0 r!
b0 s!
b0 t!
1w!
0x!
b0 y!
b0 z!
b0 {!
b0 |!
b0 &"
b0 '"
0("
0)"
0*"
0+"
0,"
0-"
0."
0/"
00"
01"
02"
03"
14"
15"
06"
07"
08"
09"
0:"
0;"
b111 <"
b111 ="
b0 >"
b11111111 ?"
0A"
0B"
0D"
0E"
b0 L"
0M"
b1 N"
0O"
b0 X"
0Y"
b0 Z"
0["
1j"
b11111111 k"
b11111111 l"
b0 t"
0u"
b0 v"
0w"
1##
b111 $#
b111 %#
1/#
b111 0#
b111 1#
b0 7#
08#
b0 9#
0:#
0L#
0M#
0N#
0O#
0P#
0Q#
0R#
b0 S#
b0 T#
b0 U#
b0 V#
xb#
0v#
0w#
0x#
1y#
0z#
1{#
0|#
b1111 }#
b11111111 ~#
b0 !$
0"$
0#$
0$$
0%$
0&$
0'$
0($
1)$
0*$
1+$
b1111 ,$
b11110000 -$
0:$
0;$
0<$
0=$
0>$
0?$
0@$
1A$
b11111111 B$
b0 C$
b0 D$
b0 M$
0N$
b0 O$
0P$
b0 X$
0Y$
b0 Z$
0[$
1j$
b11111111 k$
b11111111 l$
b0 %%
b0 &%
b0 '%
b0 (%
b0 )%
b0 *%
b0 +%
b0 ,%
b0 -%
b0 .%
bx A
bx B
bx C
bx D
bx E
bx F
b0 W#
b0 X#
b0 Y#
b0 Z#
b0 [#
b0 \#
b0 ]#
b0 ^#
b0 _#
b0 `#
b0 a#
b0 "
b100 #
b110 $
b1000 %
b1100 &
b1101 '
b1 (
b1001 )
b11 *
b1011 +
b10 ,
b1010 -
b1110 .
b0 @"
b0 C"
b11 F"
b101 P"
b1000 \"
b0 ]"
b0 ^"
b100 m"
b11 x"
b0 y"
b0 z"
b11 &#
b0 '#
b0 (#
b10 2#
b11 /%
b1011 0%
b10 1%
b1010 2%
b1110 3%
b101 E$
b100 Q$
b1000 \$
b1 ]$
b1 ^$
r10 !
b0 @
b1000 .$
b111 /$
xw
xv
xu
xt
xs
xr
xq
xp
xo
xn
xm
xl
xk
xj
xi
xh
xg
xf
xe
xd
xc
xb
xa
x`
x_
x^
x]
x\
x[
xZ
xY
xX
xW
xV
xU
xT
xP
xO
0N
0M
0L
0K
xJ
xI
0H
0G
zS
zR
zQ
0$%
0#%
0"%
0!%
0~$
0}$
0|$
0{$
0z$
0y$
0x$
0w$
0v$
0u$
0t$
0s$
0r$
0q$
0p$
0o$
0n$
0m$
0u#
0t#
0s#
0r#
0q#
0p#
0o#
0n#
0m#
0l#
0k#
0j#
0i#
0h#
0g#
0f#
0e#
0d#
0c#
0%"
0$"
0#"
0""
0!"
0~!
0}!
0H!
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
1v!
0u!
1m!
0l!
1K#
1J#
1I#
1H#
1G#
1F#
1E#
1D#
1C#
1B#
1A#
1@#
1?#
1>#
0=#
0<#
0;#
16#
15#
04#
03#
0.#
0-#
0,#
1+#
0*#
0)#
0"#
0!#
0~"
1}"
0|"
0{"
0s"
0r"
0q"
1p"
0o"
0n"
0i"
0h"
0g"
0f"
0e"
0d"
0c"
0b"
1a"
0`"
0_"
1W"
0V"
0U"
1T"
1S"
0R"
0Q"
0K"
0J"
1I"
1H"
0G"
1i$
1h$
1g$
1f$
1e$
1d$
1c$
1b$
0a$
0`$
0_$
0W$
0V$
0U$
1T$
0S$
0R$
1L$
0K$
0J$
1I$
1H$
0G$
0F$
09$
18$
17$
16$
15$
04$
03$
02$
01$
00$
$end
#5000
1/
1G
#10000
0/
0G
#15000
1/
1G
#20000
0/
0G
#25000
1/
1G
#30000
0/
0G
#35000
1/
1G
#40000
0/
0G
#45000
1/
1G
10
1H
#50000
0/
0G
#55000
1/
1G
bx ^!
bx [!
xB"
xE"
b1 L"
b10 N"
bx ]!
#60000
0/
0G
#65000
1/
1G
b10 L"
xD"
xA"
x-"
x."
x0"
b11 N"
xG"
x;#
b10 N"
b11 N"
#70000
0/
0G
#75000
1/
1G
x/"
x3"
b11 L"
b100 N"
#80000
0/
0G
#85000
1/
1G
b100 L"
b1 N"
#90000
0/
0G
#95000
1/
1G
b1 @
b1100 A
b1 B
b0 C
b1 L"
b10 N"
#100000
0/
0G
11
12
b1100 7
b1 8
b10 5
b0 6
1M
1K
1L
0P
0O
1w
0v
0u
0t
0s
0r
0q
0p
0o
0n
0m
0l
0k
0j
0i
0h
0g
0f
0e
0d
0c
0b
0a
0`
0_
0^
0]
0\
0[
0Z
0Y
0X
0W
0V
1U
1T
b0 \!
#105000
1/
1G
b0 ^!
b1100 [!
1e!
b10 L"
b11 N"
b1 S!
b11 O!
b1 ]!
1N!
1'!
b11 ,!
1n$
1f#
1e#
b1100 ,$
b11000011 -$
b0 .$
b10001111 }#
b1 .$
b11001111 }#
b10 .$
b11 .$
b100 .$
b11000111 }#
b101 .$
b11000011 }#
b110 .$
b111 .$
b1000 .$
b1111 D$
06$
05$
12$
11$
0A$
1A$
#110000
0/
0G
01
b0 5
b1100 D
b0 F
0M
0K
0N!
b0 O!
b0 S!
b0 ,!
0'!
0f#
0e#
0n$
b1111 ,$
b11110000 -$
b0 .$
b1000011 }#
b1 .$
b11 }#
b10 .$
b11 .$
b100 .$
b1011 }#
b101 .$
b1111 }#
b110 .$
b111 .$
b1000 .$
b0 D$
16$
15$
02$
01$
0A$
1A$
#115000
1/
1G
b11 L"
b100 N"
#120000
0/
0G
11
02
b10 5
1M
1K
0L
b1 X!
1N!
b1 S!
b11 O!
b11 ,!
1'!
1f#
1e#
1n$
b1100 ,$
b11000011 -$
b0 .$
b10001111 }#
b1 .$
b11001111 }#
b10 .$
b11 .$
b100 .$
b11000111 }#
b101 .$
b11000011 }#
b110 .$
b111 .$
b1000 .$
b1111 D$
b0 X!
b1 X!
06$
05$
12$
11$
0A$
1A$
#125000
1/
1G
b0 E
b1111 C$
b1 Q!
0e!
1f!
b100 L"
b1 }
b1 9
b1 N"
0N!
b0 O!
b0 S!
b0 X!
0A$
1@$
1w#
0+$
b0 ,!
0'!
1*!
16!
b100000000 V!
0f#
0e#
0n$
b1111 ,$
b11110000 -$
b0 .$
b1000011 }#
b1 .$
b11 }#
b10 .$
b11 .$
b100 .$
b1011 }#
b101 .$
b1111 }#
b110 .$
b111 .$
b1000 .$
b1 X!
b0 X!
16$
15$
02$
01$
0@$
1@$
#130000
0/
0G
01
b0 5
b0 ?
b0 A
b11011110101011011011111011101111 B
b10 C
0M
0K
b1 X!
1N!
0N!
#135000
1/
1G
b1 L"
0f!
b10 N"
#140000
0/
0G
11
12
b1101 7
b10 5
1M
1K
1L
1W
#145000
1/
1G
b1101 [!
1e!
b10 L"
b11 N"
b1 T!
1N!
1'!
1n$
#150000
0/
0G
#155000
1/
1G
b11 L"
1f!
b0 T!
b1 T!
b0 T!
0N!
b100 N"
0'!
0n$
#160000
0/
0G
01
b0 5
0M
0K
1N!
0N!
#165000
1/
1G
0f!
b100 L"
b1 N"
#170000
0/
0G
11
b0 7
b11011110101011011011111011101111 8
b10 5
b10 6
1M
1K
1O
1v
1u
1t
1r
1q
1p
1n
1m
1l
1k
1j
1h
1g
1e
1d
1b
1`
1^
1]
1\
1[
1Y
1X
0W
0U
0T
b1111 \!
1J!
1d!
0K!
1{
14
0|
03
1l!
1u!
0m!
0v!
#175000
1/
1G
b1 L"
b10 ^!
b0 [!
1b!
1c!
0J!
0d!
1J!
b0 ]!
b10 N"
1K!
1|
13
1m!
1v!
#180000
0/
0G
#185000
1/
1G
0c!
b10 L"
b11 N"
0J!
1J!
1d!
0K!
0|
03
0m!
0v!
#190000
0/
0G
01
b0 5
b10 @
0M
0K
0J!
0d!
1K!
0{
04
1|
13
0l!
0u!
1m!
1v!
#195000
1/
1G
b11 L"
0b!
b100 N"
#200000
0/
0G
#205000
1/
1G
b100 L"
b1 N"
#210000
0/
0G
#215000
1/
1G
b1 L"
b10 N"
#220000
0/
0G
#225000
1/
1G
b10 L"
b11 N"
#230000
0/
0G
#235000
1/
1G
b11 L"
b100 N"
#240000
0/
0G
#245000
1/
1G
b100 L"
b1 N"
#250000
0/
0G
#255000
1/
1G
b1 L"
b10 N"
#260000
0/
0G
#265000
1/
1G
b10 L"
b11 N"
#270000
0/
0G
#275000
1/
1G
b11 L"
b100 N"
#280000
0/
0G
#285000
1/
1G
b100 L"
b1 N"
#290000
0/
0G
#295000
1/
1G
b1 L"
b10 N"
#300000
0/
0G
#305000
1/
1G
b10 L"
b11 N"
#310000
0/
0G
#315000
1/
1G
b11 L"
b100 N"
#320000
0/
0G
#325000
1/
1G
b100 L"
b1 N"
#330000
0/
0G
#335000
1/
1G
b1 L"
b10 N"
#340000
0/
0G
#345000
1/
1G
b10 L"
b11 N"
#350000
0/
0G
#355000
1/
1G
b11 L"
b100 N"
#360000
0/
0G
#365000
1/
1G
b100 L"
b1 N"
#370000
0/
0G
#375000
1/
1G
b1 L"
b10 N"
#380000
0/
0G
#385000
1/
1G
b10 L"
b11 N"
#390000
0/
0G
#395000
1/
1G
b11 L"
b100 N"
#400000
0/
0G
#405000
1/
1G
b100 L"
b1 N"
#410000
0/
0G
#415000
1/
1G
b1 L"
b10 N"
#420000
0/
0G
#425000
1/
1G
b10 L"
b11 N"
#430000
0/
0G
#435000
1/
1G
b11 L"
b100 N"
#440000
0/
0G
#445000
1/
1G
b100 L"
b1 N"
#450000
0/
0G
#455000
1/
1G
b1 L"
b10 N"
#460000
0/
0G
#465000
1/
1G
b10 L"
b11 N"
#470000
0/
0G
#475000
1/
1G
b11 L"
b100 N"
#480000
0/
0G
#485000
1/
1G
b100 L"
b1 N"
#490000
0/
0G
#495000
1/
1G
b1 L"
b10 N"
#500000
0/
0G
#505000
1/
1G
b10 L"
b11 N"
#510000
0/
0G
#515000
1/
1G
b11 L"
b100 N"
#520000
0/
0G
#525000
1/
1G
b100 L"
b1 N"
#530000
0/
0G
#535000
1/
1G
b1 L"
b10 N"
#540000
0/
0G
#545000
1/
1G
b10 L"
b11 N"
#550000
0/
0G
#555000
1/
1G
b11 L"
b100 N"
#560000
0/
0G
#565000
1/
1G
b100 L"
b1 N"
#570000
0/
0G
#575000
1/
1G
b1 L"
b10 N"
#580000
0/
0G
#585000
1/
1G
b10 L"
b11 N"
#590000
0/
0G
#595000
1/
1G
b11 L"
b100 N"
#600000
0/
0G
#605000
1/
1G
b100 L"
b1 N"
#610000
0/
0G
#615000
1/
1G
b1 L"
b10 N"
#620000
0/
0G
#625000
1/
1G
b10 L"
b11 N"
#630000
0/
0G
#635000
1/
1G
b11 L"
b100 N"
#640000
0/
0G
#645000
1/
1G
b100 L"
b1 N"
#650000
0/
0G
#655000
1/
1G
b1 L"
b10 N"
#660000
0/
0G
#665000
1/
1G
b10 L"
b11 N"
#670000
0/
0G
#675000
1/
1G
b11 L"
b100 N"
#680000
0/
0G
#685000
1/
1G
b0 D
b10 F
b100 L"
b1 N"
#690000
0/
0G
11
02
b10 5
1M
1K
0L
b1 s!
b0 s!
b1 {!
1J!
1d!
0K!
1{
14
0|
03
1l!
1u!
0m!
0v!
b0 {!
#695000
1/
1G
1b!
1c!
0e!
b1 L"
b10 N"
0J!
0d!
1J!
1K!
1|
13
1m!
1v!
#700000
0/
0G
#705000
1/
1G
b1 E
b10 L"
0c!
0J!
1J!
1d!
b11 N"
0K!
0|
03
0m!
0v!
#710000
0/
0G
01
b0 5
b1 ?
b11 @
b1010101011001100111011110001000 B
0M
0K
0J!
0d!
1K!
0{
04
1|
13
0l!
0u!
1m!
1v!
#715000
1/
1G
0b!
b11 L"
b100 N"
#720000
0/
0G
11
12
b1101 7
b1 8
b10 5
b0 6
1M
1K
1L
0O
0v
0u
0t
0r
0q
0p
0n
0m
0l
0k
0j
0h
0g
0e
0d
0b
0`
0^
0]
0\
0[
0Y
0X
1W
1U
1T
b0 \!
#725000
1/
1G
b100 L"
b0 ^!
b1101 [!
1e!
b1 ]!
b1 T!
1N!
b1 N"
1'!
1n$
#730000
0/
0G
#735000
1/
1G
1f!
b1 L"
b10 N"
b0 T!
b1 T!
b0 T!
0N!
0'!
0n$
#740000
0/
0G
01
b0 5
0M
0K
1N!
0N!
#745000
1/
1G
b10 L"
0f!
b11 N"
#750000
0/
0G
11
b0 7
b1010101011001100111011110001000 8
b10 5
b10 6
1M
1K
1O
0w
1t
1p
1o
1n
1m
1k
1j
1i
1f
1e
1b
1a
1_
1]
1[
1Y
0W
0U
0T
b1111 \!
1J!
1d!
0K!
1{
14
0|
03
1l!
1u!
0m!
0v!
#755000
1/
1G
b10 ^!
b0 [!
1b!
1c!
b11 L"
b100 N"
0J!
0d!
1J!
b0 ]!
1K!
1|
13
1m!
1v!
#760000
0/
0G
#765000
1/
1G
b100 L"
0c!
0J!
1J!
1d!
b1 N"
0K!
0|
03
0m!
0v!
#770000
0/
0G
01
b0 5
0M
0K
0J!
0d!
1K!
0{
04
1|
13
0l!
0u!
1m!
1v!
#775000
1/
1G
0b!
b1 L"
b10 N"
#780000
0/
0G
#785000
1/
1G
b10 L"
b11 N"
#790000
0/
0G
#795000
1/
1G
b11 L"
b100 N"
#800000
0/
0G
#805000
1/
1G
b100 L"
b1 N"
#810000
0/
0G
#815000
1/
1G
b1 L"
b10 N"
#820000
0/
0G
#825000
1/
1G
b10 L"
b11 N"
#830000
0/
0G
#835000
1/
1G
b11 L"
b100 N"
#840000
0/
0G
#845000
1/
1G
b100 L"
b1 N"
#850000
0/
0G
#855000
1/
1G
b1 L"
b10 N"
#860000
0/
0G
#865000
1/
1G
b10 L"
b11 N"
#870000
0/
0G
#875000
1/
1G
b11 L"
b100 N"
#880000
0/
0G
#885000
1/
1G
b100 L"
b1 N"
#890000
0/
0G
#895000
1/
1G
b1 L"
b10 N"
#900000
0/
0G
#905000
1/
1G
b10 L"
b11 N"
#910000
0/
0G
#915000
1/
1G
b11 L"
b100 N"
#920000
0/
0G
#925000
1/
1G
b100 L"
b1 N"
#930000
0/
0G
#935000
1/
1G
b1 L"
b10 N"
#940000
0/
0G
#945000
1/
1G
b10 L"
b11 N"
#950000
0/
0G
#955000
1/
1G
b11 L"
b100 N"
#960000
0/
0G
#965000
1/
1G
b100 L"
b1 N"
#970000
0/
0G
#975000
1/
1G
b1 L"
b10 N"
#980000
0/
0G
#985000
1/
1G
b10 L"
b11 N"
#990000
0/
0G
#995000
1/
1G
b11 L"
b100 N"
#1000000
0/
0G
#1005000
1/
1G
b100 L"
b1 N"
#1010000
0/
0G
#101