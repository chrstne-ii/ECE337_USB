$date
	Mon Apr 20 05:43:46 2026
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
$var wire 1 8" 