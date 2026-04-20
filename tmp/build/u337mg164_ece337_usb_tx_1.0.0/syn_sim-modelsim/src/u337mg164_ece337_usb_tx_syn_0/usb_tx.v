/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Mon Apr 20 13:29:31 2026
/////////////////////////////////////////////////////////////


module tx_fsm ( clk, n_rst, rollover_8, tx_packet, buffer_occupancy, 
        pid_packet, tx_packet_data, bit_clk, enable_timer, tx_transfer_active, 
        end_packet, get_tx_packet_data, first, clear, tx_error, idle, packet
 );
  input [3:0] tx_packet;
  input [6:0] buffer_occupancy;
  input [7:0] pid_packet;
  input [7:0] tx_packet_data;
  output [7:0] packet;
  input clk, n_rst, rollover_8, bit_clk;
  output enable_timer, tx_transfer_active, end_packet, get_tx_packet_data,
         first, clear, tx_error, idle;
  wire   n122, n123, n124, n125, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110
;
  wire   [5:0] state;

  DFFSR \state_reg[0]  ( .D(n125), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[0]) );
  DFFSR \state_reg[2]  ( .D(n123), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[2]) );
  DFFSR \state_reg[3]  ( .D(n124), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[3]) );
  DFFSR \state_reg[1]  ( .D(n122), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[1]) );
  NAND3X1 U7 ( .A(n5), .B(n6), .C(n7), .Y(tx_transfer_active) );
  NAND2X1 U8 ( .A(n8), .B(n9), .Y(packet[7]) );
  AOI22X1 U9 ( .A(pid_packet[7]), .B(n10), .C(tx_packet_data[7]), .D(n11), .Y(
        n8) );
  NAND2X1 U10 ( .A(n12), .B(n9), .Y(packet[6]) );
  AOI22X1 U11 ( .A(pid_packet[6]), .B(n10), .C(tx_packet_data[6]), .D(n11), 
        .Y(n12) );
  NAND2X1 U12 ( .A(n13), .B(n9), .Y(packet[5]) );
  AOI22X1 U13 ( .A(pid_packet[5]), .B(n10), .C(tx_packet_data[5]), .D(n11), 
        .Y(n13) );
  NAND2X1 U14 ( .A(n14), .B(n9), .Y(packet[4]) );
  AOI22X1 U15 ( .A(pid_packet[4]), .B(n10), .C(tx_packet_data[4]), .D(n11), 
        .Y(n14) );
  NAND2X1 U16 ( .A(n15), .B(n9), .Y(packet[3]) );
  AOI22X1 U17 ( .A(pid_packet[3]), .B(n10), .C(tx_packet_data[3]), .D(n11), 
        .Y(n15) );
  NAND2X1 U18 ( .A(n16), .B(n9), .Y(packet[2]) );
  AOI22X1 U19 ( .A(pid_packet[2]), .B(n10), .C(tx_packet_data[2]), .D(n11), 
        .Y(n16) );
  NAND2X1 U20 ( .A(n17), .B(n9), .Y(packet[1]) );
  INVX1 U21 ( .A(n18), .Y(n9) );
  AOI22X1 U22 ( .A(pid_packet[1]), .B(n10), .C(tx_packet_data[1]), .D(n11), 
        .Y(n17) );
  NAND2X1 U23 ( .A(n19), .B(n20), .Y(packet[0]) );
  AOI21X1 U24 ( .A(pid_packet[0]), .B(n10), .C(first), .Y(n20) );
  AOI21X1 U25 ( .A(tx_packet_data[0]), .B(n11), .C(n18), .Y(n19) );
  NAND3X1 U26 ( .A(n21), .B(n22), .C(n23), .Y(n18) );
  AND2X1 U27 ( .A(n24), .B(n7), .Y(n23) );
  INVX1 U28 ( .A(n6), .Y(enable_timer) );
  NOR2X1 U29 ( .A(n25), .B(n26), .Y(n6) );
  NAND3X1 U30 ( .A(n27), .B(n28), .C(n22), .Y(n26) );
  INVX1 U31 ( .A(n10), .Y(n28) );
  NAND2X1 U32 ( .A(n29), .B(n30), .Y(n10) );
  NAND3X1 U33 ( .A(n31), .B(n32), .C(n24), .Y(n25) );
  INVX1 U34 ( .A(n5), .Y(first) );
  INVX1 U35 ( .A(n7), .Y(clear) );
  NAND3X1 U36 ( .A(n33), .B(n34), .C(state[1]), .Y(n7) );
  MUX2X1 U37 ( .B(n35), .A(n34), .S(n36), .Y(n125) );
  AND2X1 U38 ( .A(n37), .B(n38), .Y(n35) );
  NOR2X1 U39 ( .A(n39), .B(n40), .Y(n38) );
  OAI21X1 U40 ( .A(n21), .B(n41), .C(n42), .Y(n40) );
  OAI21X1 U41 ( .A(tx_error), .B(n43), .C(state[0]), .Y(n42) );
  INVX1 U42 ( .A(n44), .Y(n43) );
  NOR2X1 U43 ( .A(tx_error), .B(idle), .Y(n21) );
  NAND2X1 U44 ( .A(n24), .B(n45), .Y(n39) );
  INVX1 U45 ( .A(n46), .Y(n45) );
  NOR2X1 U46 ( .A(n47), .B(n48), .Y(n37) );
  OAI21X1 U47 ( .A(n49), .B(n50), .C(n51), .Y(n48) );
  OAI22X1 U48 ( .A(n30), .B(n52), .C(n53), .D(n54), .Y(n47) );
  OAI21X1 U49 ( .A(n55), .B(n36), .C(n56), .Y(n124) );
  OAI21X1 U50 ( .A(n57), .B(n36), .C(state[3]), .Y(n56) );
  INVX1 U51 ( .A(n58), .Y(n57) );
  NOR2X1 U52 ( .A(n59), .B(n60), .Y(n55) );
  NAND2X1 U53 ( .A(n61), .B(n22), .Y(n60) );
  INVX1 U54 ( .A(n62), .Y(n61) );
  NAND2X1 U55 ( .A(n31), .B(n32), .Y(n59) );
  MUX2X1 U56 ( .B(n63), .A(n64), .S(n36), .Y(n123) );
  NOR2X1 U57 ( .A(n65), .B(n66), .Y(n63) );
  NAND3X1 U58 ( .A(n44), .B(n22), .C(n51), .Y(n66) );
  INVX1 U59 ( .A(n67), .Y(n51) );
  OAI21X1 U60 ( .A(n68), .B(n69), .C(n70), .Y(n67) );
  AOI22X1 U61 ( .A(n71), .B(n72), .C(n73), .D(idle), .Y(n70) );
  NOR2X1 U62 ( .A(rollover_8), .B(n74), .Y(n72) );
  NOR2X1 U63 ( .A(n75), .B(n30), .Y(n71) );
  INVX1 U64 ( .A(n76), .Y(n69) );
  AOI21X1 U65 ( .A(n77), .B(n78), .C(end_packet), .Y(n22) );
  AOI21X1 U66 ( .A(n76), .B(get_tx_packet_data), .C(n79), .Y(n44) );
  OAI21X1 U67 ( .A(n30), .B(n80), .C(n68), .Y(n79) );
  INVX1 U68 ( .A(n49), .Y(get_tx_packet_data) );
  NAND3X1 U69 ( .A(n49), .B(n58), .C(n29), .Y(n65) );
  MUX2X1 U70 ( .B(n81), .A(n82), .S(n36), .Y(n122) );
  OAI21X1 U71 ( .A(bit_clk), .B(n83), .C(n84), .Y(n36) );
  MUX2X1 U72 ( .B(n46), .A(n85), .S(n86), .Y(n84) );
  OAI21X1 U73 ( .A(n34), .B(n32), .C(n87), .Y(n85) );
  AND2X1 U74 ( .A(n31), .B(n29), .Y(n87) );
  NAND2X1 U75 ( .A(n88), .B(n77), .Y(n29) );
  NAND2X1 U76 ( .A(n89), .B(n77), .Y(n31) );
  INVX1 U77 ( .A(end_packet), .Y(n83) );
  OAI21X1 U78 ( .A(n53), .B(n54), .C(n90), .Y(end_packet) );
  INVX1 U79 ( .A(n91), .Y(n54) );
  NOR2X1 U80 ( .A(n92), .B(n93), .Y(n81) );
  OR2X1 U81 ( .A(n62), .B(n94), .Y(n93) );
  OAI21X1 U82 ( .A(n76), .B(n27), .C(n5), .Y(n94) );
  NAND2X1 U83 ( .A(n88), .B(n95), .Y(n5) );
  INVX1 U84 ( .A(n11), .Y(n27) );
  NAND2X1 U85 ( .A(n49), .B(n68), .Y(n11) );
  NAND3X1 U86 ( .A(state[1]), .B(n34), .C(n89), .Y(n68) );
  NAND2X1 U87 ( .A(n89), .B(n95), .Y(n49) );
  NOR2X1 U88 ( .A(n96), .B(rollover_8), .Y(n76) );
  NAND2X1 U89 ( .A(n97), .B(n98), .Y(n62) );
  AOI22X1 U90 ( .A(n46), .B(state[1]), .C(n78), .D(n95), .Y(n98) );
  INVX1 U91 ( .A(n32), .Y(n78) );
  NOR2X1 U92 ( .A(n32), .B(state[0]), .Y(n46) );
  NAND2X1 U93 ( .A(state[3]), .B(n64), .Y(n32) );
  AOI22X1 U94 ( .A(n73), .B(idle), .C(n80), .D(n99), .Y(n97) );
  INVX1 U95 ( .A(n30), .Y(n99) );
  NAND2X1 U96 ( .A(n89), .B(n91), .Y(n30) );
  NOR2X1 U97 ( .A(n64), .B(state[3]), .Y(n89) );
  INVX1 U98 ( .A(state[2]), .Y(n64) );
  INVX1 U99 ( .A(n52), .Y(n80) );
  NAND3X1 U100 ( .A(n86), .B(n75), .C(n100), .Y(n52) );
  AOI21X1 U101 ( .A(tx_packet[2]), .B(n101), .C(n102), .Y(n100) );
  INVX1 U102 ( .A(rollover_8), .Y(n86) );
  AND2X1 U103 ( .A(n88), .B(n91), .Y(idle) );
  NOR2X1 U104 ( .A(state[1]), .B(state[0]), .Y(n91) );
  NOR2X1 U105 ( .A(n103), .B(n74), .Y(n73) );
  NAND3X1 U106 ( .A(n24), .B(n58), .C(n90), .Y(n92) );
  NAND2X1 U107 ( .A(n33), .B(n95), .Y(n90) );
  NOR2X1 U108 ( .A(n34), .B(state[1]), .Y(n95) );
  NAND2X1 U109 ( .A(tx_error), .B(n41), .Y(n58) );
  INVX1 U110 ( .A(n103), .Y(n41) );
  OAI21X1 U111 ( .A(n96), .B(n74), .C(n104), .Y(n103) );
  OAI21X1 U112 ( .A(n105), .B(n106), .C(n75), .Y(n104) );
  INVX1 U113 ( .A(tx_packet[0]), .Y(n75) );
  NOR2X1 U114 ( .A(n102), .B(n101), .Y(n105) );
  INVX1 U115 ( .A(tx_packet[3]), .Y(n101) );
  INVX1 U116 ( .A(n106), .Y(n74) );
  NOR2X1 U117 ( .A(n102), .B(tx_packet[2]), .Y(n106) );
  INVX1 U118 ( .A(tx_packet[1]), .Y(n102) );
  INVX1 U119 ( .A(n50), .Y(n96) );
  NAND3X1 U120 ( .A(n107), .B(n108), .C(n109), .Y(n50) );
  NOR2X1 U121 ( .A(buffer_occupancy[0]), .B(n110), .Y(n109) );
  OR2X1 U122 ( .A(buffer_occupancy[2]), .B(buffer_occupancy[1]), .Y(n110) );
  NOR2X1 U123 ( .A(buffer_occupancy[6]), .B(buffer_occupancy[5]), .Y(n108) );
  NOR2X1 U124 ( .A(buffer_occupancy[4]), .B(buffer_occupancy[3]), .Y(n107) );
  AND2X1 U125 ( .A(n77), .B(n33), .Y(tx_error) );
  INVX1 U126 ( .A(n53), .Y(n33) );
  NAND2X1 U127 ( .A(state[2]), .B(state[3]), .Y(n53) );
  NOR2X1 U128 ( .A(n82), .B(n34), .Y(n77) );
  INVX1 U129 ( .A(state[1]), .Y(n82) );
  NAND3X1 U130 ( .A(state[1]), .B(n34), .C(n88), .Y(n24) );
  NOR2X1 U131 ( .A(state[3]), .B(state[2]), .Y(n88) );
  INVX1 U132 ( .A(state[0]), .Y(n34) );
endmodule


module flex_counter_SIZE5 ( clk, n_rst, clear, count_enable, rollover_val, 
        count_out, rollover_flag );
  input [4:0] rollover_val;
  output [4:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N21, n42, n43, n44, n45, n46, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72;

  DFFSR \count_out_reg[0]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[1]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR \count_out_reg[4]  ( .D(n42), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[4]) );
  DFFSR rollover_flag_reg ( .D(N21), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  OAI22X1 U6 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(n46) );
  OAI22X1 U7 ( .A(n5), .B(n2), .C(n6), .D(n4), .Y(n45) );
  XNOR2X1 U11 ( .A(n3), .B(n7), .Y(n6) );
  INVX1 U12 ( .A(count_out[1]), .Y(n5) );
  OAI22X1 U13 ( .A(n8), .B(n2), .C(n9), .D(n4), .Y(n44) );
  XNOR2X1 U14 ( .A(n10), .B(n11), .Y(n9) );
  OAI22X1 U15 ( .A(n18), .B(n2), .C(n19), .D(n4), .Y(n43) );
  XNOR2X1 U16 ( .A(n20), .B(n21), .Y(n19) );
  INVX1 U17 ( .A(count_out[3]), .Y(n18) );
  OAI22X1 U18 ( .A(n22), .B(n2), .C(n23), .D(n4), .Y(n42) );
  OR2X1 U19 ( .A(n24), .B(clear), .Y(n4) );
  AOI22X1 U20 ( .A(count_out[4]), .B(n25), .C(n20), .D(n21), .Y(n23) );
  AND2X1 U21 ( .A(n11), .B(n10), .Y(n21) );
  AND2X1 U22 ( .A(n3), .B(n7), .Y(n10) );
  AND2X1 U23 ( .A(count_out[1]), .B(n25), .Y(n7) );
  AND2X1 U24 ( .A(count_out[0]), .B(n25), .Y(n3) );
  AND2X1 U25 ( .A(count_out[2]), .B(n25), .Y(n11) );
  AND2X1 U26 ( .A(count_out[3]), .B(n25), .Y(n20) );
  INVX1 U27 ( .A(n24), .Y(n2) );
  OAI21X1 U28 ( .A(n26), .B(n27), .C(n28), .Y(N21) );
  NAND3X1 U29 ( .A(n29), .B(n30), .C(n31), .Y(n28) );
  NOR2X1 U30 ( .A(n25), .B(n32), .Y(n31) );
  OAI21X1 U31 ( .A(rollover_val[0]), .B(n1), .C(n24), .Y(n32) );
  NOR2X1 U32 ( .A(clear), .B(count_enable), .Y(n24) );
  OAI21X1 U33 ( .A(count_out[4]), .B(n33), .C(n34), .Y(n25) );
  NAND3X1 U34 ( .A(n35), .B(n36), .C(n37), .Y(n34) );
  OAI21X1 U35 ( .A(count_out[3]), .B(n38), .C(n39), .Y(n37) );
  AOI22X1 U36 ( .A(n40), .B(n41), .C(rollover_val[2]), .D(n8), .Y(n39) );
  OAI21X1 U37 ( .A(count_out[1]), .B(n47), .C(n48), .Y(n40) );
  NAND3X1 U38 ( .A(n49), .B(n1), .C(rollover_val[0]), .Y(n48) );
  INVX1 U39 ( .A(count_out[0]), .Y(n1) );
  AND2X1 U40 ( .A(n36), .B(n41), .Y(n30) );
  AND2X1 U41 ( .A(n49), .B(n35), .Y(n29) );
  NAND2X1 U42 ( .A(count_out[4]), .B(n33), .Y(n35) );
  INVX1 U43 ( .A(rollover_val[4]), .Y(n33) );
  NAND2X1 U44 ( .A(count_out[1]), .B(n47), .Y(n49) );
  NAND3X1 U45 ( .A(n50), .B(n51), .C(n52), .Y(n27) );
  AOI21X1 U46 ( .A(n53), .B(rollover_val[3]), .C(n54), .Y(n52) );
  INVX1 U47 ( .A(count_enable), .Y(n54) );
  XOR2X1 U48 ( .A(n55), .B(count_out[3]), .Y(n53) );
  MUX2X1 U49 ( .B(n56), .A(n57), .S(n58), .Y(n51) );
  NOR2X1 U50 ( .A(rollover_val[4]), .B(rollover_val[3]), .Y(n57) );
  INVX1 U51 ( .A(n36), .Y(n56) );
  NAND2X1 U52 ( .A(count_out[3]), .B(n38), .Y(n36) );
  INVX1 U53 ( .A(rollover_val[3]), .Y(n38) );
  MUX2X1 U54 ( .B(n59), .A(n60), .S(n58), .Y(n50) );
  INVX1 U55 ( .A(n55), .Y(n58) );
  NOR2X1 U56 ( .A(rollover_val[3]), .B(count_out[3]), .Y(n60) );
  OAI21X1 U57 ( .A(n8), .B(n61), .C(n41), .Y(n59) );
  NAND2X1 U58 ( .A(count_out[2]), .B(n62), .Y(n41) );
  NAND3X1 U59 ( .A(n63), .B(n64), .C(n65), .Y(n26) );
  NOR2X1 U60 ( .A(n66), .B(n67), .Y(n65) );
  XOR2X1 U61 ( .A(n22), .B(n68), .Y(n67) );
  OAI21X1 U62 ( .A(rollover_val[3]), .B(n55), .C(rollover_val[4]), .Y(n68) );
  INVX1 U63 ( .A(count_out[4]), .Y(n22) );
  XOR2X1 U64 ( .A(n69), .B(count_out[1]), .Y(n66) );
  OAI21X1 U65 ( .A(n70), .B(n47), .C(n61), .Y(n69) );
  XOR2X1 U66 ( .A(rollover_val[0]), .B(count_out[0]), .Y(n64) );
  AOI21X1 U67 ( .A(n71), .B(n8), .C(clear), .Y(n63) );
  INVX1 U68 ( .A(count_out[2]), .Y(n8) );
  OAI21X1 U69 ( .A(n72), .B(n62), .C(n55), .Y(n71) );
  NAND2X1 U70 ( .A(n72), .B(n62), .Y(n55) );
  INVX1 U71 ( .A(rollover_val[2]), .Y(n62) );
  INVX1 U72 ( .A(n61), .Y(n72) );
  NAND2X1 U73 ( .A(n70), .B(n47), .Y(n61) );
  INVX1 U74 ( .A(rollover_val[1]), .Y(n47) );
  INVX1 U75 ( .A(rollover_val[0]), .Y(n70) );
endmodule


module flex_counter_SIZE4 ( clk, n_rst, clear, count_enable, rollover_val, 
        count_out, rollover_flag );
  input [3:0] rollover_val;
  output [3:0] count_out;
  input clk, n_rst, clear, count_enable;
  output rollover_flag;
  wire   N19, n50, n51, n52, n53, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n54, n55, n56, n57, n58, n59, n60, n61, n62;

  DFFSR \count_out_reg[0]  ( .D(n53), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[0]) );
  DFFSR \count_out_reg[1]  ( .D(n52), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[1]) );
  DFFSR \count_out_reg[2]  ( .D(n51), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[2]) );
  DFFSR \count_out_reg[3]  ( .D(n50), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        count_out[3]) );
  DFFSR rollover_flag_reg ( .D(N19), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        rollover_flag) );
  OAI22X1 U6 ( .A(n1), .B(n2), .C(n3), .D(n4), .Y(n53) );
  OAI21X1 U9 ( .A(n5), .B(n2), .C(n6), .Y(n52) );
  MUX2X1 U10 ( .B(n7), .A(n8), .S(n9), .Y(n6) );
  NOR2X1 U11 ( .A(clear), .B(n3), .Y(n8) );
  NOR2X1 U12 ( .A(n4), .B(n10), .Y(n7) );
  INVX1 U13 ( .A(n3), .Y(n10) );
  OAI21X1 U14 ( .A(n11), .B(n2), .C(n17), .Y(n51) );
  MUX2X1 U15 ( .B(n18), .A(n19), .S(n20), .Y(n17) );
  NOR2X1 U16 ( .A(clear), .B(n21), .Y(n19) );
  NOR2X1 U17 ( .A(n4), .B(n22), .Y(n18) );
  OAI22X1 U18 ( .A(n23), .B(n2), .C(n24), .D(n4), .Y(n50) );
  NAND2X1 U19 ( .A(n2), .B(n25), .Y(n4) );
  INVX1 U20 ( .A(clear), .Y(n25) );
  AOI22X1 U21 ( .A(count_out[3]), .B(n26), .C(n21), .D(n20), .Y(n24) );
  NOR2X1 U22 ( .A(n11), .B(n27), .Y(n20) );
  INVX1 U23 ( .A(n22), .Y(n21) );
  NAND2X1 U24 ( .A(n3), .B(n9), .Y(n22) );
  NOR2X1 U25 ( .A(n5), .B(n27), .Y(n9) );
  NOR2X1 U26 ( .A(n1), .B(n27), .Y(n3) );
  OAI21X1 U27 ( .A(n28), .B(n29), .C(n30), .Y(N19) );
  NAND3X1 U28 ( .A(n27), .B(n31), .C(n32), .Y(n30) );
  NOR2X1 U29 ( .A(n2), .B(n33), .Y(n32) );
  OAI21X1 U30 ( .A(rollover_val[0]), .B(n1), .C(n34), .Y(n33) );
  OR2X1 U31 ( .A(count_enable), .B(clear), .Y(n2) );
  INVX1 U32 ( .A(n26), .Y(n27) );
  OAI21X1 U33 ( .A(count_out[3]), .B(n35), .C(n36), .Y(n26) );
  NAND2X1 U34 ( .A(n37), .B(n34), .Y(n36) );
  NAND2X1 U35 ( .A(count_out[3]), .B(n35), .Y(n34) );
  OAI21X1 U36 ( .A(count_out[2]), .B(n38), .C(n39), .Y(n37) );
  OAI21X1 U37 ( .A(n40), .B(n11), .C(rollover_val[2]), .Y(n39) );
  INVX1 U38 ( .A(n40), .Y(n38) );
  OAI21X1 U39 ( .A(count_out[1]), .B(n41), .C(n42), .Y(n40) );
  NAND3X1 U40 ( .A(n43), .B(n1), .C(rollover_val[0]), .Y(n42) );
  INVX1 U41 ( .A(count_out[0]), .Y(n1) );
  INVX1 U42 ( .A(rollover_val[3]), .Y(n35) );
  NAND3X1 U43 ( .A(n44), .B(count_enable), .C(n45), .Y(n29) );
  MUX2X1 U44 ( .B(n46), .A(n47), .S(n48), .Y(n45) );
  NAND2X1 U45 ( .A(n49), .B(n31), .Y(n47) );
  INVX1 U46 ( .A(n54), .Y(n31) );
  OAI21X1 U47 ( .A(rollover_val[2]), .B(n11), .C(n43), .Y(n54) );
  NAND2X1 U48 ( .A(count_out[1]), .B(n41), .Y(n43) );
  INVX1 U49 ( .A(rollover_val[1]), .Y(n41) );
  AOI22X1 U50 ( .A(count_out[1]), .B(n55), .C(rollover_val[2]), .D(n11), .Y(
        n49) );
  INVX1 U51 ( .A(count_out[2]), .Y(n11) );
  NOR2X1 U52 ( .A(rollover_val[3]), .B(rollover_val[2]), .Y(n46) );
  XNOR2X1 U53 ( .A(n56), .B(n23), .Y(n44) );
  INVX1 U54 ( .A(count_out[3]), .Y(n23) );
  OAI21X1 U55 ( .A(rollover_val[2]), .B(n48), .C(rollover_val[3]), .Y(n56) );
  INVX1 U56 ( .A(n57), .Y(n48) );
  NAND3X1 U57 ( .A(n58), .B(n59), .C(n60), .Y(n28) );
  AOI21X1 U58 ( .A(n61), .B(rollover_val[1]), .C(clear), .Y(n60) );
  NOR2X1 U59 ( .A(count_out[1]), .B(n55), .Y(n61) );
  OAI21X1 U60 ( .A(n62), .B(n5), .C(n57), .Y(n59) );
  NOR2X1 U61 ( .A(rollover_val[0]), .B(rollover_val[1]), .Y(n57) );
  INVX1 U62 ( .A(count_out[1]), .Y(n5) );
  XNOR2X1 U63 ( .A(count_out[2]), .B(rollover_val[2]), .Y(n62) );
  XNOR2X1 U64 ( .A(n55), .B(count_out[0]), .Y(n58) );
  INVX1 U65 ( .A(rollover_val[0]), .Y(n55) );
endmodule


module flex_sr_SIZE8_MSB_FIRST1_PRIORITY1 ( clk, n_rst, shift_enable, 
        load_enable, serial_in, parallel_in, serial_out, parallel_out );
  input [7:0] parallel_in;
  output [7:0] parallel_out;
  input clk, n_rst, shift_enable, load_enable, serial_in;
  output serial_out;
  wire   serial_out, n28, n29, n30, n31, n32, n33, n34, n35, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27;
  assign parallel_out[7] = serial_out;

  DFFSR \parallel_out_reg[0]  ( .D(n35), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[0]) );
  DFFSR \parallel_out_reg[1]  ( .D(n34), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[1]) );
  DFFSR \parallel_out_reg[2]  ( .D(n33), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[2]) );
  DFFSR \parallel_out_reg[3]  ( .D(n32), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[3]) );
  DFFSR \parallel_out_reg[4]  ( .D(n31), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[4]) );
  DFFSR \parallel_out_reg[5]  ( .D(n30), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[5]) );
  DFFSR \parallel_out_reg[6]  ( .D(n29), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        parallel_out[6]) );
  DFFSR \parallel_out_reg[7]  ( .D(n28), .CLK(clk), .R(1'b1), .S(n_rst), .Q(
        serial_out) );
  OAI21X1 U10 ( .A(n9), .B(n10), .C(n11), .Y(n35) );
  AOI22X1 U11 ( .A(parallel_in[0]), .B(n12), .C(parallel_out[0]), .D(n13), .Y(
        n11) );
  INVX1 U12 ( .A(serial_in), .Y(n9) );
  OAI21X1 U13 ( .A(n14), .B(n10), .C(n15), .Y(n34) );
  AOI22X1 U14 ( .A(parallel_in[1]), .B(n12), .C(parallel_out[1]), .D(n13), .Y(
        n15) );
  INVX1 U15 ( .A(parallel_out[0]), .Y(n14) );
  OAI21X1 U16 ( .A(n10), .B(n16), .C(n17), .Y(n33) );
  AOI22X1 U17 ( .A(parallel_in[2]), .B(n12), .C(parallel_out[2]), .D(n13), .Y(
        n17) );
  INVX1 U18 ( .A(parallel_out[1]), .Y(n16) );
  OAI21X1 U19 ( .A(n10), .B(n18), .C(n19), .Y(n32) );
  AOI22X1 U20 ( .A(parallel_in[3]), .B(n12), .C(parallel_out[3]), .D(n13), .Y(
        n19) );
  INVX1 U21 ( .A(parallel_out[2]), .Y(n18) );
  OAI21X1 U22 ( .A(n10), .B(n20), .C(n21), .Y(n31) );
  AOI22X1 U23 ( .A(parallel_in[4]), .B(n12), .C(parallel_out[4]), .D(n13), .Y(
        n21) );
  INVX1 U24 ( .A(parallel_out[3]), .Y(n20) );
  OAI21X1 U25 ( .A(n10), .B(n22), .C(n23), .Y(n30) );
  AOI22X1 U26 ( .A(parallel_in[5]), .B(n12), .C(parallel_out[5]), .D(n13), .Y(
        n23) );
  INVX1 U27 ( .A(parallel_out[4]), .Y(n22) );
  OAI21X1 U28 ( .A(n10), .B(n24), .C(n25), .Y(n29) );
  AOI22X1 U29 ( .A(parallel_in[6]), .B(n12), .C(parallel_out[6]), .D(n13), .Y(
        n25) );
  INVX1 U30 ( .A(parallel_out[5]), .Y(n24) );
  OAI21X1 U31 ( .A(n10), .B(n26), .C(n27), .Y(n28) );
  AOI22X1 U32 ( .A(parallel_in[7]), .B(n12), .C(serial_out), .D(n13), .Y(n27)
         );
  NOR2X1 U33 ( .A(n13), .B(shift_enable), .Y(n12) );
  NOR2X1 U34 ( .A(shift_enable), .B(load_enable), .Y(n13) );
  INVX1 U35 ( .A(parallel_out[6]), .Y(n26) );
  INVX1 U36 ( .A(shift_enable), .Y(n10) );
endmodule


module usb_tx ( clk, n_rst, tx_packet, buffer_occupancy, tx_packet_data, 
        tx_transfer_active, tx_error, get_tx_packet_data, dp_out, dm_out );
  input [3:0] tx_packet;
  input [6:0] buffer_occupancy;
  input [7:0] tx_packet_data;
  input clk, n_rst;
  output tx_transfer_active, tx_error, get_tx_packet_data, dp_out, dm_out;
  wire   idle, clear, first, end_packet, enable_timer, rollover_8, rollover_25,
         load_enable, serial_out, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [7:0] packet;
  wire   [4:0] clk_count;

  DFFSR dp_out_reg ( .D(n23), .CLK(clk), .R(1'b1), .S(n_rst), .Q(dp_out) );
  DFFSR dm_out_reg ( .D(n22), .CLK(clk), .R(n_rst), .S(1'b1), .Q(dm_out) );
  tx_fsm fsm ( .clk(clk), .n_rst(n_rst), .rollover_8(rollover_8), .tx_packet(
        tx_packet), .buffer_occupancy(buffer_occupancy), .pid_packet({
        tx_packet[0], tx_packet[1], tx_packet[2], tx_packet[3], n41, n40, n39, 
        n38}), .tx_packet_data(tx_packet_data), .bit_clk(n37), .enable_timer(
        enable_timer), .tx_transfer_active(tx_transfer_active), .end_packet(
        end_packet), .get_tx_packet_data(get_tx_packet_data), .first(first), 
        .clear(clear), .tx_error(tx_error), .idle(idle), .packet(packet) );
  flex_counter_SIZE5 data_period ( .clk(clk), .n_rst(n_rst), .clear(clear), 
        .count_enable(enable_timer), .rollover_val({1'b1, 1'b1, 1'b0, 1'b0, 
        1'b1}), .count_out(clk_count), .rollover_flag(rollover_25) );
  flex_counter_SIZE4 byte_counter ( .clk(clk), .n_rst(n_rst), .clear(clear), 
        .count_enable(n37), .rollover_val({1'b1, 1'b0, 1'b0, 1'b0}), 
        .rollover_flag(rollover_8) );
  flex_sr_SIZE8_MSB_FIRST1_PRIORITY1 load_sr ( .clk(clk), .n_rst(n_rst), 
        .shift_enable(n37), .load_enable(load_enable), .serial_in(1'b0), 
        .parallel_in(packet), .serial_out(serial_out) );
  INVX1 U27 ( .A(tx_packet[3]), .Y(n38) );
  INVX1 U28 ( .A(tx_packet[2]), .Y(n39) );
  INVX1 U29 ( .A(tx_packet[1]), .Y(n40) );
  INVX1 U30 ( .A(tx_packet[0]), .Y(n41) );
  OAI22X1 U31 ( .A(n37), .B(n24), .C(end_packet), .D(n25), .Y(n23) );
  AOI22X1 U32 ( .A(n26), .B(n37), .C(serial_out), .D(dp_out), .Y(n25) );
  OAI21X1 U33 ( .A(serial_out), .B(dp_out), .C(n27), .Y(n26) );
  INVX1 U34 ( .A(dp_out), .Y(n24) );
  OAI21X1 U35 ( .A(n37), .B(n28), .C(n29), .Y(n22) );
  NAND3X1 U36 ( .A(n30), .B(n27), .C(n31), .Y(n29) );
  MUX2X1 U37 ( .B(n32), .A(n28), .S(serial_out), .Y(n31) );
  NAND2X1 U38 ( .A(n37), .B(n28), .Y(n32) );
  INVX1 U39 ( .A(idle), .Y(n27) );
  INVX1 U40 ( .A(end_packet), .Y(n30) );
  INVX1 U41 ( .A(dm_out), .Y(n28) );
  INVX1 U42 ( .A(n33), .Y(n37) );
  AOI21X1 U43 ( .A(n34), .B(n35), .C(rollover_25), .Y(n33) );
  NOR2X1 U44 ( .A(clk_count[2]), .B(clk_count[1]), .Y(n35) );
  NOR2X1 U45 ( .A(clk_count[0]), .B(n36), .Y(n34) );
  XNOR2X1 U46 ( .A(clk_count[4]), .B(clk_count[3]), .Y(n36) );
  OR2X1 U47 ( .A(first), .B(rollover_8), .Y(load_enable) );
endmodule

