/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Sun Apr 19 17:22:40 2026
/////////////////////////////////////////////////////////////


module hready_read_fsm ( clk, n_rst, hresp, hwrite, hsel, haddr, hsize, 
        rx_data, hrready, get_rx_data, hr_avail, buffer );
  input [3:0] haddr;
  input [1:0] hsize;
  input [7:0] rx_data;
  output [31:0] buffer;
  input clk, n_rst, hresp, hwrite, hsel;
  output hrready, get_rx_data, hr_avail;
  wire   n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n1, n2,
         n3, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122;
  wire   [3:0] state;
  wire   [3:0] next_state;

  DFFSR \state_reg[0]  ( .D(next_state[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[0]) );
  DFFSR \state_reg[1]  ( .D(next_state[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[1]) );
  DFFSR \state_reg[2]  ( .D(next_state[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[2]) );
  DFFSR \state_reg[3]  ( .D(next_state[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[3]) );
  DFFSR \buffer_reg[16]  ( .D(n138), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[16]) );
  DFFSR \buffer_reg[17]  ( .D(n139), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[17]) );
  DFFSR \buffer_reg[18]  ( .D(n140), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[18]) );
  DFFSR \buffer_reg[19]  ( .D(n141), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[19]) );
  DFFSR \buffer_reg[20]  ( .D(n142), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[20]) );
  DFFSR \buffer_reg[21]  ( .D(n143), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[21]) );
  DFFSR \buffer_reg[22]  ( .D(n144), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[22]) );
  DFFSR \buffer_reg[23]  ( .D(n145), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[23]) );
  DFFSR \buffer_reg[30]  ( .D(n130), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[30]) );
  DFFSR \buffer_reg[29]  ( .D(n131), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[29]) );
  DFFSR \buffer_reg[28]  ( .D(n132), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[28]) );
  DFFSR \buffer_reg[27]  ( .D(n133), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[27]) );
  DFFSR \buffer_reg[26]  ( .D(n134), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[26]) );
  DFFSR \buffer_reg[25]  ( .D(n135), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[25]) );
  DFFSR \buffer_reg[24]  ( .D(n136), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[24]) );
  DFFSR \buffer_reg[31]  ( .D(n137), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[31]) );
  DFFSR \buffer_reg[14]  ( .D(n146), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[14]) );
  DFFSR \buffer_reg[13]  ( .D(n147), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[13]) );
  DFFSR \buffer_reg[12]  ( .D(n148), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[12]) );
  DFFSR \buffer_reg[11]  ( .D(n149), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[11]) );
  DFFSR \buffer_reg[10]  ( .D(n150), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[10]) );
  DFFSR \buffer_reg[9]  ( .D(n151), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[9]) );
  DFFSR \buffer_reg[8]  ( .D(n152), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[8]) );
  DFFSR \buffer_reg[15]  ( .D(n153), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[15]) );
  DFFSR \buffer_reg[6]  ( .D(n154), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[6]) );
  DFFSR \buffer_reg[5]  ( .D(n155), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[5]) );
  DFFSR \buffer_reg[4]  ( .D(n156), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[4]) );
  DFFSR \buffer_reg[3]  ( .D(n157), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[3]) );
  DFFSR \buffer_reg[2]  ( .D(n158), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[2]) );
  DFFSR \buffer_reg[1]  ( .D(n159), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[1]) );
  DFFSR \buffer_reg[0]  ( .D(n160), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[0]) );
  DFFSR \buffer_reg[7]  ( .D(n161), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[7]) );
  NAND3X1 U39 ( .A(n1), .B(n2), .C(n3), .Y(next_state[3]) );
  NAND3X1 U40 ( .A(n40), .B(state[1]), .C(state[2]), .Y(n1) );
  OAI21X1 U41 ( .A(n41), .B(n42), .C(n43), .Y(next_state[2]) );
  XNOR2X1 U42 ( .A(state[2]), .B(state[1]), .Y(n41) );
  NAND3X1 U43 ( .A(n44), .B(n45), .C(n46), .Y(next_state[1]) );
  AND2X1 U44 ( .A(n2), .B(n47), .Y(n46) );
  NAND3X1 U45 ( .A(n48), .B(n49), .C(n50), .Y(n2) );
  INVX1 U46 ( .A(n51), .Y(n48) );
  NAND3X1 U47 ( .A(n43), .B(n3), .C(n52), .Y(next_state[0]) );
  AOI21X1 U48 ( .A(n53), .B(n50), .C(n54), .Y(n52) );
  INVX1 U49 ( .A(n45), .Y(n54) );
  NOR2X1 U50 ( .A(n49), .B(n51), .Y(n53) );
  NAND3X1 U51 ( .A(hsel), .B(n55), .C(n56), .Y(n51) );
  NOR2X1 U52 ( .A(haddr[3]), .B(n57), .Y(n56) );
  OR2X1 U53 ( .A(hwrite), .B(hresp), .Y(n57) );
  INVX1 U54 ( .A(haddr[2]), .Y(n55) );
  NOR2X1 U55 ( .A(hsize[1]), .B(hsize[0]), .Y(n49) );
  AND2X1 U56 ( .A(n58), .B(n59), .Y(n3) );
  INVX1 U57 ( .A(n60), .Y(n43) );
  OAI21X1 U58 ( .A(n61), .B(n62), .C(n47), .Y(n60) );
  NOR2X1 U59 ( .A(hsize[1]), .B(n63), .Y(n61) );
  INVX1 U60 ( .A(hsize[0]), .Y(n63) );
  INVX1 U61 ( .A(n64), .Y(n161) );
  MUX2X1 U62 ( .B(rx_data[7]), .A(buffer[7]), .S(n65), .Y(n64) );
  INVX1 U63 ( .A(n66), .Y(n160) );
  MUX2X1 U64 ( .B(rx_data[0]), .A(buffer[0]), .S(n65), .Y(n66) );
  INVX1 U65 ( .A(n67), .Y(n159) );
  MUX2X1 U66 ( .B(rx_data[1]), .A(buffer[1]), .S(n65), .Y(n67) );
  INVX1 U67 ( .A(n68), .Y(n158) );
  MUX2X1 U68 ( .B(rx_data[2]), .A(buffer[2]), .S(n65), .Y(n68) );
  INVX1 U69 ( .A(n69), .Y(n157) );
  MUX2X1 U70 ( .B(rx_data[3]), .A(buffer[3]), .S(n65), .Y(n69) );
  INVX1 U71 ( .A(n70), .Y(n156) );
  MUX2X1 U72 ( .B(rx_data[4]), .A(buffer[4]), .S(n65), .Y(n70) );
  INVX1 U73 ( .A(n71), .Y(n155) );
  MUX2X1 U74 ( .B(rx_data[5]), .A(buffer[5]), .S(n65), .Y(n71) );
  INVX1 U75 ( .A(n72), .Y(n154) );
  MUX2X1 U76 ( .B(rx_data[6]), .A(buffer[6]), .S(n65), .Y(n72) );
  NAND3X1 U77 ( .A(n62), .B(n47), .C(n73), .Y(n65) );
  OAI21X1 U78 ( .A(n62), .B(n74), .C(n75), .Y(n153) );
  NAND2X1 U79 ( .A(buffer[15]), .B(n76), .Y(n75) );
  OAI21X1 U80 ( .A(n62), .B(n77), .C(n78), .Y(n152) );
  NAND2X1 U81 ( .A(buffer[8]), .B(n76), .Y(n78) );
  OAI21X1 U82 ( .A(n62), .B(n79), .C(n80), .Y(n151) );
  NAND2X1 U83 ( .A(buffer[9]), .B(n76), .Y(n80) );
  OAI21X1 U84 ( .A(n62), .B(n81), .C(n82), .Y(n150) );
  NAND2X1 U85 ( .A(buffer[10]), .B(n76), .Y(n82) );
  OAI21X1 U86 ( .A(n62), .B(n83), .C(n84), .Y(n149) );
  NAND2X1 U87 ( .A(buffer[11]), .B(n76), .Y(n84) );
  OAI21X1 U88 ( .A(n62), .B(n85), .C(n86), .Y(n148) );
  NAND2X1 U89 ( .A(buffer[12]), .B(n76), .Y(n86) );
  OAI21X1 U90 ( .A(n62), .B(n87), .C(n88), .Y(n147) );
  NAND2X1 U91 ( .A(buffer[13]), .B(n76), .Y(n88) );
  OAI21X1 U92 ( .A(n62), .B(n89), .C(n90), .Y(n146) );
  NAND2X1 U93 ( .A(buffer[14]), .B(n76), .Y(n90) );
  NAND2X1 U94 ( .A(n91), .B(n58), .Y(n76) );
  INVX1 U95 ( .A(n92), .Y(n91) );
  NAND3X1 U96 ( .A(n93), .B(n94), .C(state[2]), .Y(n62) );
  OAI21X1 U97 ( .A(n74), .B(n47), .C(n95), .Y(n145) );
  NAND2X1 U98 ( .A(buffer[23]), .B(n96), .Y(n95) );
  OAI21X1 U99 ( .A(n89), .B(n47), .C(n97), .Y(n144) );
  NAND2X1 U100 ( .A(buffer[22]), .B(n96), .Y(n97) );
  OAI21X1 U101 ( .A(n87), .B(n47), .C(n98), .Y(n143) );
  NAND2X1 U102 ( .A(buffer[21]), .B(n96), .Y(n98) );
  OAI21X1 U103 ( .A(n85), .B(n47), .C(n99), .Y(n142) );
  NAND2X1 U104 ( .A(buffer[20]), .B(n96), .Y(n99) );
  OAI21X1 U105 ( .A(n83), .B(n47), .C(n100), .Y(n141) );
  NAND2X1 U106 ( .A(buffer[19]), .B(n96), .Y(n100) );
  OAI21X1 U107 ( .A(n81), .B(n47), .C(n101), .Y(n140) );
  NAND2X1 U108 ( .A(buffer[18]), .B(n96), .Y(n101) );
  OAI21X1 U109 ( .A(n79), .B(n47), .C(n102), .Y(n139) );
  NAND2X1 U110 ( .A(buffer[17]), .B(n96), .Y(n102) );
  OAI21X1 U111 ( .A(n77), .B(n47), .C(n103), .Y(n138) );
  NAND2X1 U112 ( .A(buffer[16]), .B(n96), .Y(n103) );
  NAND2X1 U113 ( .A(n73), .B(n45), .Y(n96) );
  INVX1 U114 ( .A(n104), .Y(n73) );
  NAND3X1 U115 ( .A(n105), .B(n106), .C(n58), .Y(n104) );
  OAI21X1 U116 ( .A(n74), .B(n58), .C(n107), .Y(n137) );
  NAND2X1 U117 ( .A(buffer[31]), .B(n92), .Y(n107) );
  INVX1 U118 ( .A(rx_data[7]), .Y(n74) );
  OAI21X1 U119 ( .A(n77), .B(n58), .C(n108), .Y(n136) );
  NAND2X1 U120 ( .A(buffer[24]), .B(n92), .Y(n108) );
  INVX1 U121 ( .A(rx_data[0]), .Y(n77) );
  OAI21X1 U122 ( .A(n79), .B(n58), .C(n109), .Y(n135) );
  NAND2X1 U123 ( .A(buffer[25]), .B(n92), .Y(n109) );
  INVX1 U124 ( .A(rx_data[1]), .Y(n79) );
  OAI21X1 U125 ( .A(n81), .B(n58), .C(n110), .Y(n134) );
  NAND2X1 U126 ( .A(buffer[26]), .B(n92), .Y(n110) );
  INVX1 U127 ( .A(rx_data[2]), .Y(n81) );
  OAI21X1 U128 ( .A(n83), .B(n58), .C(n111), .Y(n133) );
  NAND2X1 U129 ( .A(buffer[27]), .B(n92), .Y(n111) );
  INVX1 U130 ( .A(rx_data[3]), .Y(n83) );
  OAI21X1 U131 ( .A(n85), .B(n58), .C(n112), .Y(n132) );
  NAND2X1 U132 ( .A(buffer[28]), .B(n92), .Y(n112) );
  INVX1 U133 ( .A(rx_data[4]), .Y(n85) );
  OAI21X1 U134 ( .A(n87), .B(n58), .C(n113), .Y(n131) );
  NAND2X1 U135 ( .A(buffer[29]), .B(n92), .Y(n113) );
  INVX1 U136 ( .A(rx_data[5]), .Y(n87) );
  OAI21X1 U137 ( .A(n89), .B(n58), .C(n114), .Y(n130) );
  NAND2X1 U138 ( .A(buffer[30]), .B(n92), .Y(n114) );
  NAND3X1 U139 ( .A(n105), .B(n106), .C(n115), .Y(n92) );
  AND2X1 U140 ( .A(n47), .B(n45), .Y(n115) );
  NAND3X1 U141 ( .A(n93), .B(n116), .C(state[1]), .Y(n45) );
  NAND3X1 U142 ( .A(state[1]), .B(n93), .C(state[2]), .Y(n47) );
  INVX1 U143 ( .A(get_rx_data), .Y(n105) );
  NAND3X1 U144 ( .A(state[3]), .B(n117), .C(n118), .Y(n58) );
  NOR2X1 U145 ( .A(state[2]), .B(state[1]), .Y(n118) );
  INVX1 U146 ( .A(rx_data[6]), .Y(n89) );
  INVX1 U147 ( .A(n106), .Y(hrready) );
  NOR2X1 U148 ( .A(hr_avail), .B(n50), .Y(n106) );
  INVX1 U149 ( .A(n119), .Y(n50) );
  NAND3X1 U150 ( .A(n94), .B(n116), .C(n93), .Y(n119) );
  NOR2X1 U151 ( .A(state[3]), .B(state[0]), .Y(n93) );
  INVX1 U152 ( .A(state[1]), .Y(n94) );
  INVX1 U153 ( .A(n120), .Y(hr_avail) );
  OAI21X1 U154 ( .A(n121), .B(state[2]), .C(state[3]), .Y(n120) );
  NOR2X1 U155 ( .A(state[1]), .B(n117), .Y(n121) );
  NAND2X1 U156 ( .A(n44), .B(n42), .Y(get_rx_data) );
  INVX1 U157 ( .A(n122), .Y(n44) );
  OAI22X1 U158 ( .A(state[1]), .B(n42), .C(state[0]), .D(n59), .Y(n122) );
  NAND3X1 U159 ( .A(state[1]), .B(n116), .C(state[3]), .Y(n59) );
  INVX1 U160 ( .A(state[2]), .Y(n116) );
  INVX1 U161 ( .A(n40), .Y(n42) );
  NOR2X1 U162 ( .A(n117), .B(state[3]), .Y(n40) );
  INVX1 U163 ( .A(state[0]), .Y(n117) );
endmodule


module hready_write_fsm ( clk, n_rst, hresp, prev_hwrite, hsel, prev_haddr, 
        prev_hsize, hwdata, hwready, store_tx_data, tx_data );
  input [3:0] prev_haddr;
  input [1:0] prev_hsize;
  input [31:0] hwdata;
  output [7:0] tx_data;
  input clk, n_rst, hresp, prev_hwrite, hsel;
  output hwready, store_tx_data;
  wire   n79, n80, n81, n82, n83, n84, n85, n86, n1, n2, n3, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71;
  wire   [3:0] state;
  wire   [3:0] next_state;

  DFFSR \state_reg[0]  ( .D(next_state[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[0]) );
  DFFSR \state_reg[1]  ( .D(next_state[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[1]) );
  DFFSR \state_reg[2]  ( .D(next_state[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[2]) );
  DFFSR \state_reg[3]  ( .D(next_state[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[3]) );
  DFFSR \tx_data_reg[0]  ( .D(n79), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[0]) );
  DFFSR \tx_data_reg[1]  ( .D(n80), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[1]) );
  DFFSR \tx_data_reg[2]  ( .D(n81), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[2]) );
  DFFSR \tx_data_reg[3]  ( .D(n82), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[3]) );
  DFFSR \tx_data_reg[4]  ( .D(n83), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[4]) );
  DFFSR \tx_data_reg[5]  ( .D(n84), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[5]) );
  DFFSR \tx_data_reg[6]  ( .D(n85), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[6]) );
  DFFSR \tx_data_reg[7]  ( .D(n86), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[7]) );
  OAI21X1 U15 ( .A(n1), .B(n2), .C(n3), .Y(next_state[3]) );
  NAND2X1 U16 ( .A(n16), .B(n17), .Y(n2) );
  NAND3X1 U17 ( .A(n18), .B(n19), .C(n20), .Y(next_state[2]) );
  OR2X1 U18 ( .A(n21), .B(n22), .Y(next_state[1]) );
  OAI21X1 U19 ( .A(n23), .B(n24), .C(n25), .Y(n22) );
  NAND3X1 U20 ( .A(n3), .B(n26), .C(n18), .Y(n21) );
  NAND3X1 U21 ( .A(n1), .B(n19), .C(n26), .Y(next_state[0]) );
  OAI21X1 U22 ( .A(n16), .B(n27), .C(n28), .Y(n19) );
  INVX1 U23 ( .A(n24), .Y(n28) );
  NAND2X1 U24 ( .A(n17), .B(n23), .Y(n27) );
  INVX1 U25 ( .A(prev_hsize[1]), .Y(n17) );
  INVX1 U26 ( .A(prev_hsize[0]), .Y(n16) );
  NAND3X1 U27 ( .A(n29), .B(hsel), .C(n30), .Y(n1) );
  NOR2X1 U28 ( .A(prev_haddr[2]), .B(n31), .Y(n30) );
  OR2X1 U29 ( .A(prev_hwrite), .B(prev_haddr[3]), .Y(n31) );
  NOR2X1 U30 ( .A(hresp), .B(n32), .Y(n29) );
  NAND3X1 U31 ( .A(n33), .B(n34), .C(n35), .Y(n86) );
  AOI22X1 U32 ( .A(hwdata[15]), .B(n36), .C(hwdata[7]), .D(n37), .Y(n35) );
  NAND2X1 U33 ( .A(hwdata[23]), .B(n38), .Y(n34) );
  AOI22X1 U34 ( .A(tx_data[7]), .B(n39), .C(hwdata[31]), .D(n40), .Y(n33) );
  NAND3X1 U35 ( .A(n41), .B(n42), .C(n43), .Y(n85) );
  AOI22X1 U36 ( .A(hwdata[14]), .B(n36), .C(hwdata[6]), .D(n37), .Y(n43) );
  NAND2X1 U37 ( .A(hwdata[22]), .B(n38), .Y(n42) );
  AOI22X1 U38 ( .A(tx_data[6]), .B(n39), .C(hwdata[30]), .D(n40), .Y(n41) );
  NAND3X1 U39 ( .A(n44), .B(n45), .C(n46), .Y(n84) );
  AOI22X1 U40 ( .A(hwdata[13]), .B(n36), .C(hwdata[5]), .D(n37), .Y(n46) );
  NAND2X1 U41 ( .A(hwdata[21]), .B(n38), .Y(n45) );
  AOI22X1 U42 ( .A(tx_data[5]), .B(n39), .C(hwdata[29]), .D(n40), .Y(n44) );
  NAND3X1 U43 ( .A(n47), .B(n48), .C(n49), .Y(n83) );
  AOI22X1 U44 ( .A(hwdata[12]), .B(n36), .C(hwdata[4]), .D(n37), .Y(n49) );
  NAND2X1 U45 ( .A(hwdata[20]), .B(n38), .Y(n48) );
  AOI22X1 U46 ( .A(tx_data[4]), .B(n39), .C(hwdata[28]), .D(n40), .Y(n47) );
  NAND3X1 U47 ( .A(n50), .B(n51), .C(n52), .Y(n82) );
  AOI22X1 U48 ( .A(hwdata[11]), .B(n36), .C(hwdata[3]), .D(n37), .Y(n52) );
  NAND2X1 U49 ( .A(hwdata[19]), .B(n38), .Y(n51) );
  AOI22X1 U50 ( .A(tx_data[3]), .B(n39), .C(hwdata[27]), .D(n40), .Y(n50) );
  NAND3X1 U51 ( .A(n53), .B(n54), .C(n55), .Y(n81) );
  AOI22X1 U52 ( .A(hwdata[10]), .B(n36), .C(hwdata[2]), .D(n37), .Y(n55) );
  NAND2X1 U53 ( .A(hwdata[18]), .B(n38), .Y(n54) );
  AOI22X1 U54 ( .A(tx_data[2]), .B(n39), .C(hwdata[26]), .D(n40), .Y(n53) );
  NAND3X1 U55 ( .A(n56), .B(n57), .C(n58), .Y(n80) );
  AOI22X1 U56 ( .A(hwdata[9]), .B(n36), .C(hwdata[1]), .D(n37), .Y(n58) );
  NAND2X1 U57 ( .A(hwdata[17]), .B(n38), .Y(n57) );
  AOI22X1 U58 ( .A(tx_data[1]), .B(n39), .C(hwdata[25]), .D(n40), .Y(n56) );
  NAND3X1 U59 ( .A(n59), .B(n60), .C(n61), .Y(n79) );
  AOI22X1 U60 ( .A(hwdata[8]), .B(n36), .C(hwdata[0]), .D(n37), .Y(n61) );
  OAI21X1 U61 ( .A(n62), .B(n63), .C(n3), .Y(n37) );
  NAND2X1 U62 ( .A(state[1]), .B(state[0]), .Y(n63) );
  NAND2X1 U63 ( .A(state[2]), .B(n64), .Y(n62) );
  INVX1 U64 ( .A(n18), .Y(n36) );
  NAND3X1 U65 ( .A(state[2]), .B(n64), .C(n65), .Y(n18) );
  NAND2X1 U66 ( .A(hwdata[16]), .B(n38), .Y(n60) );
  INVX1 U67 ( .A(n20), .Y(n38) );
  NAND3X1 U68 ( .A(n66), .B(state[0]), .C(state[1]), .Y(n20) );
  AOI22X1 U69 ( .A(tx_data[0]), .B(n39), .C(hwdata[24]), .D(n40), .Y(n59) );
  INVX1 U70 ( .A(n25), .Y(n40) );
  NAND2X1 U71 ( .A(n66), .B(n65), .Y(n25) );
  NAND2X1 U72 ( .A(n32), .B(n67), .Y(n39) );
  INVX1 U73 ( .A(store_tx_data), .Y(n67) );
  NAND3X1 U74 ( .A(n68), .B(n24), .C(n26), .Y(store_tx_data) );
  NAND3X1 U75 ( .A(n66), .B(n69), .C(state[1]), .Y(n26) );
  NAND3X1 U76 ( .A(n69), .B(n64), .C(state[2]), .Y(n24) );
  INVX1 U77 ( .A(state[3]), .Y(n64) );
  NAND3X1 U78 ( .A(n3), .B(n68), .C(n32), .Y(hwready) );
  NAND3X1 U79 ( .A(n69), .B(n23), .C(n66), .Y(n32) );
  NOR2X1 U80 ( .A(state[3]), .B(state[2]), .Y(n66) );
  INVX1 U81 ( .A(state[1]), .Y(n23) );
  OAI21X1 U82 ( .A(state[2]), .B(n70), .C(state[3]), .Y(n68) );
  INVX1 U83 ( .A(n65), .Y(n70) );
  NAND3X1 U84 ( .A(n65), .B(n71), .C(state[3]), .Y(n3) );
  INVX1 U85 ( .A(state[2]), .Y(n71) );
  NOR2X1 U86 ( .A(n69), .B(state[1]), .Y(n65) );
  INVX1 U87 ( .A(state[0]), .Y(n69) );
endmodule


module ahb_subordinate ( clk, n_rst, hsel, hwrite, rx_transfer_active, 
        rx_data_ready, rx_error, tx_transfer_active, tx_error, hsize, htrans, 
        hburst, rx_packet, haddr, buffer_occ, rx_data, hwdata, d_mode, hresp, 
        hready, get_rx_data, store_tx_data, clear, tx_packet, tx_data, hrdata
 );
  input [1:0] hsize;
  input [1:0] htrans;
  input [2:0] hburst;
  input [2:0] rx_packet;
  input [3:0] haddr;
  input [6:0] buffer_occ;
  input [7:0] rx_data;
  input [31:0] hwdata;
  output [3:0] tx_packet;
  output [7:0] tx_data;
  output [31:0] hrdata;
  input clk, n_rst, hsel, hwrite, rx_transfer_active, rx_data_ready, rx_error,
         tx_transfer_active, tx_error;
  output d_mode, hresp, hready, get_rx_data, store_tx_data, clear;
  wire   hr_avail, hrready, hwready, prev_hwrite, hresp_high, prev_hresp,
         prev_hresp_high, prev_clear, N66, N93, N96, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708;
  wire   [31:0] buffer;
  wire   [1:0] prev_hsize;
  wire   [3:0] prev_haddr;
  wire   [47:40] register;
  wire   [31:0] next_hrdata;
  wire   [47:32] next_reg;
  assign N66 = hsize[1];
  assign N96 = htrans[1];

  DFFSR \prev_htrans_reg[1]  ( .D(N96), .CLK(clk), .R(n_rst), .S(1'b1), .Q(N93) );
  DFFSR \prev_hsize_reg[1]  ( .D(N66), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        prev_hsize[1]) );
  DFFSR \prev_hsize_reg[0]  ( .D(hsize[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(prev_hsize[0]) );
  DFFSR \prev_haddr_reg[3]  ( .D(haddr[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(prev_haddr[3]) );
  DFFSR \prev_haddr_reg[2]  ( .D(haddr[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(prev_haddr[2]) );
  DFFSR \prev_haddr_reg[1]  ( .D(haddr[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(prev_haddr[1]) );
  DFFSR \prev_haddr_reg[0]  ( .D(haddr[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(prev_haddr[0]) );
  DFFSR prev_hresp_high_reg ( .D(hresp_high), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(prev_hresp_high) );
  DFFSR prev_hresp_reg ( .D(hresp), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        prev_hresp) );
  DFFSR prev_hwrite_reg ( .D(hwrite), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        prev_hwrite) );
  DFFSR \hrdata_reg[16]  ( .D(n693), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[16]) );
  DFFSR \hrdata_reg[17]  ( .D(n694), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[17]) );
  DFFSR \hrdata_reg[18]  ( .D(n695), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[18]) );
  DFFSR \hrdata_reg[19]  ( .D(n696), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[19]) );
  DFFSR \hrdata_reg[20]  ( .D(n697), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[20]) );
  DFFSR \hrdata_reg[21]  ( .D(n698), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[21]) );
  DFFSR \hrdata_reg[22]  ( .D(n699), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[22]) );
  DFFSR \hrdata_reg[23]  ( .D(n700), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[23]) );
  DFFSR \hrdata_reg[24]  ( .D(n701), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[24]) );
  DFFSR \hrdata_reg[25]  ( .D(n702), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[25]) );
  DFFSR \hrdata_reg[26]  ( .D(n703), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[26]) );
  DFFSR \hrdata_reg[27]  ( .D(n704), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[27]) );
  DFFSR \hrdata_reg[28]  ( .D(n705), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[28]) );
  DFFSR \hrdata_reg[29]  ( .D(n706), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[29]) );
  DFFSR \hrdata_reg[30]  ( .D(n707), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[30]) );
  DFFSR \hrdata_reg[31]  ( .D(n708), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        hrdata[31]) );
  DFFSR \register_reg[42]  ( .D(next_reg[42]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(register[42]) );
  DFFSR \hrdata_reg[10]  ( .D(next_hrdata[10]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[10]) );
  DFFSR \register_reg[43]  ( .D(next_reg[43]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(register[43]) );
  DFFSR \hrdata_reg[11]  ( .D(next_hrdata[11]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[11]) );
  DFFSR \hrdata_reg[3]  ( .D(next_hrdata[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[3]) );
  DFFSR \register_reg[44]  ( .D(next_reg[44]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(register[44]) );
  DFFSR \hrdata_reg[12]  ( .D(next_hrdata[12]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[12]) );
  DFFSR \hrdata_reg[4]  ( .D(next_hrdata[4]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[4]) );
  DFFSR \register_reg[45]  ( .D(next_reg[45]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(register[45]) );
  DFFSR \hrdata_reg[13]  ( .D(next_hrdata[13]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[13]) );
  DFFSR \hrdata_reg[5]  ( .D(next_hrdata[5]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[5]) );
  DFFSR \register_reg[46]  ( .D(next_reg[46]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(register[46]) );
  DFFSR \hrdata_reg[14]  ( .D(next_hrdata[14]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[14]) );
  DFFSR \hrdata_reg[6]  ( .D(next_hrdata[6]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[6]) );
  DFFSR \register_reg[47]  ( .D(next_reg[47]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(register[47]) );
  DFFSR \hrdata_reg[15]  ( .D(next_hrdata[15]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[15]) );
  DFFSR \hrdata_reg[7]  ( .D(next_hrdata[7]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[7]) );
  DFFSR \register_reg[41]  ( .D(next_reg[41]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(register[41]) );
  DFFSR \hrdata_reg[9]  ( .D(next_hrdata[9]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[9]) );
  DFFSR \hrdata_reg[1]  ( .D(next_hrdata[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[1]) );
  DFFSR \hrdata_reg[2]  ( .D(next_hrdata[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[2]) );
  DFFSR prev_clear_reg ( .D(clear), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        prev_clear) );
  DFFSR \register_reg[40]  ( .D(next_reg[40]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(register[40]) );
  DFFSR \hrdata_reg[0]  ( .D(next_hrdata[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[0]) );
  DFFSR \hrdata_reg[8]  ( .D(next_hrdata[8]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[8]) );
  hready_read_fsm read_fsm ( .clk(clk), .n_rst(n_rst), .hresp(hresp), .hwrite(
        hwrite), .hsel(hsel), .haddr(haddr), .hsize({N66, hsize[0]}), 
        .rx_data(rx_data), .hrready(hrready), .get_rx_data(get_rx_data), 
        .hr_avail(hr_avail), .buffer(buffer) );
  hready_write_fsm write_fsm ( .clk(clk), .n_rst(n_rst), .hresp(hresp), 
        .prev_hwrite(prev_hwrite), .hsel(hsel), .prev_haddr(prev_haddr), 
        .prev_hsize(prev_hsize), .hwdata(hwdata), .hwready(hwready), 
        .store_tx_data(store_tx_data), .tx_data(tx_data) );
  INVX2 U402 ( .A(n516), .Y(n430) );
  BUFX2 U403 ( .A(n446), .Y(n431) );
  OAI21X1 U404 ( .A(n432), .B(n433), .C(n434), .Y(tx_packet[3]) );
  OR2X1 U405 ( .A(n435), .B(hwdata[0]), .Y(n433) );
  INVX1 U406 ( .A(hwdata[1]), .Y(n432) );
  NOR2X1 U407 ( .A(n436), .B(n434), .Y(tx_packet[2]) );
  OAI21X1 U408 ( .A(n436), .B(n435), .C(n434), .Y(tx_packet[1]) );
  NAND2X1 U409 ( .A(hwdata[2]), .B(n437), .Y(n434) );
  NOR2X1 U410 ( .A(hwdata[1]), .B(hwdata[0]), .Y(n436) );
  NOR2X1 U411 ( .A(n435), .B(n438), .Y(tx_packet[0]) );
  NAND2X1 U412 ( .A(n439), .B(n440), .Y(n438) );
  INVX1 U413 ( .A(hwdata[2]), .Y(n440) );
  XOR2X1 U414 ( .A(hwdata[1]), .B(hwdata[0]), .Y(n439) );
  NAND2X1 U415 ( .A(n441), .B(n442), .Y(next_hrdata[9]) );
  AOI21X1 U416 ( .A(n443), .B(next_reg[41]), .C(n444), .Y(n442) );
  INVX1 U417 ( .A(n445), .Y(n444) );
  AOI22X1 U418 ( .A(buffer[9]), .B(n431), .C(hrdata[9]), .D(n430), .Y(n441) );
  NAND2X1 U419 ( .A(n448), .B(n449), .Y(next_hrdata[8]) );
  AOI21X1 U420 ( .A(next_reg[40]), .B(n443), .C(n450), .Y(n449) );
  OAI21X1 U421 ( .A(n451), .B(n452), .C(n445), .Y(n450) );
  NAND3X1 U422 ( .A(n453), .B(n454), .C(tx_transfer_active), .Y(n445) );
  NAND2X1 U423 ( .A(tx_error), .B(n455), .Y(n452) );
  NAND3X1 U424 ( .A(n454), .B(n456), .C(n457), .Y(n451) );
  INVX1 U425 ( .A(n458), .Y(n457) );
  AOI22X1 U426 ( .A(buffer[8]), .B(n431), .C(hrdata[8]), .D(n430), .Y(n448) );
  NAND2X1 U427 ( .A(n459), .B(n460), .Y(next_hrdata[7]) );
  AOI22X1 U428 ( .A(n461), .B(hwdata[7]), .C(n462), .D(next_reg[47]), .Y(n460)
         );
  AOI22X1 U429 ( .A(hrdata[7]), .B(n463), .C(buffer[7]), .D(n446), .Y(n459) );
  NAND2X1 U430 ( .A(n464), .B(n465), .Y(next_hrdata[6]) );
  AOI21X1 U431 ( .A(n462), .B(next_reg[46]), .C(n466), .Y(n465) );
  INVX1 U432 ( .A(n467), .Y(n466) );
  AOI22X1 U433 ( .A(n468), .B(buffer_occ[6]), .C(hwdata[6]), .D(n461), .Y(n467) );
  INVX1 U434 ( .A(n469), .Y(n461) );
  AOI22X1 U435 ( .A(hrdata[6]), .B(n463), .C(buffer[6]), .D(n446), .Y(n464) );
  NAND3X1 U436 ( .A(n470), .B(n471), .C(n472), .Y(next_hrdata[5]) );
  AOI21X1 U437 ( .A(buffer_occ[5]), .B(n468), .C(n473), .Y(n472) );
  OAI21X1 U438 ( .A(n474), .B(n469), .C(n475), .Y(n473) );
  NAND3X1 U439 ( .A(n453), .B(n476), .C(n477), .Y(n475) );
  NOR2X1 U440 ( .A(n478), .B(n479), .Y(n477) );
  NAND2X1 U441 ( .A(buffer[5]), .B(n431), .Y(n471) );
  AOI22X1 U442 ( .A(n462), .B(next_reg[45]), .C(hrdata[5]), .D(n463), .Y(n470)
         );
  NAND3X1 U443 ( .A(n480), .B(n481), .C(n482), .Y(next_hrdata[4]) );
  AOI21X1 U444 ( .A(buffer_occ[4]), .B(n468), .C(n483), .Y(n482) );
  OAI21X1 U445 ( .A(n484), .B(n469), .C(n485), .Y(n483) );
  NAND3X1 U446 ( .A(rx_packet[2]), .B(n453), .C(n486), .Y(n485) );
  NOR2X1 U447 ( .A(rx_packet[1]), .B(rx_packet[0]), .Y(n486) );
  INVX1 U448 ( .A(hwdata[4]), .Y(n484) );
  NAND2X1 U449 ( .A(buffer[4]), .B(n431), .Y(n481) );
  AOI22X1 U450 ( .A(n462), .B(next_reg[44]), .C(hrdata[4]), .D(n463), .Y(n480)
         );
  NAND3X1 U451 ( .A(n487), .B(n488), .C(n489), .Y(next_hrdata[3]) );
  AOI21X1 U452 ( .A(buffer_occ[3]), .B(n468), .C(n490), .Y(n489) );
  OAI21X1 U453 ( .A(n491), .B(n469), .C(n492), .Y(n490) );
  NAND3X1 U454 ( .A(n493), .B(rx_packet[0]), .C(rx_packet[1]), .Y(n492) );
  INVX1 U455 ( .A(hwdata[3]), .Y(n491) );
  NAND2X1 U456 ( .A(buffer[3]), .B(n431), .Y(n488) );
  AOI22X1 U457 ( .A(n462), .B(next_reg[43]), .C(hrdata[3]), .D(n463), .Y(n487)
         );
  NAND3X1 U458 ( .A(n494), .B(n495), .C(n496), .Y(next_hrdata[2]) );
  AOI21X1 U459 ( .A(hwdata[2]), .B(n497), .C(n498), .Y(n496) );
  OAI21X1 U460 ( .A(n499), .B(n500), .C(n501), .Y(n498) );
  NAND3X1 U461 ( .A(n493), .B(n478), .C(rx_packet[1]), .Y(n501) );
  INVX1 U462 ( .A(rx_packet[0]), .Y(n478) );
  NAND2X1 U463 ( .A(buffer[2]), .B(n431), .Y(n495) );
  AOI22X1 U464 ( .A(n462), .B(next_reg[42]), .C(hrdata[2]), .D(n463), .Y(n494)
         );
  NAND3X1 U465 ( .A(n502), .B(n503), .C(n504), .Y(next_hrdata[1]) );
  AOI21X1 U466 ( .A(hwdata[1]), .B(n497), .C(n505), .Y(n504) );
  OAI21X1 U467 ( .A(n499), .B(n506), .C(n507), .Y(n505) );
  NAND3X1 U468 ( .A(rx_packet[0]), .B(n476), .C(n493), .Y(n507) );
  AND2X1 U469 ( .A(n453), .B(n479), .Y(n493) );
  INVX1 U470 ( .A(rx_packet[2]), .Y(n479) );
  NOR2X1 U471 ( .A(n508), .B(n509), .Y(n453) );
  INVX1 U472 ( .A(rx_packet[1]), .Y(n476) );
  INVX1 U473 ( .A(n468), .Y(n499) );
  NOR2X1 U474 ( .A(n510), .B(n508), .Y(n468) );
  NAND2X1 U475 ( .A(buffer[1]), .B(n431), .Y(n503) );
  AOI22X1 U476 ( .A(n462), .B(next_reg[41]), .C(hrdata[1]), .D(n463), .Y(n502)
         );
  OAI21X1 U477 ( .A(n511), .B(n512), .C(n513), .Y(next_reg[41]) );
  AOI22X1 U478 ( .A(n514), .B(hwdata[1]), .C(hwdata[9]), .D(n515), .Y(n513) );
  INVX1 U479 ( .A(register[41]), .Y(n512) );
  OAI21X1 U480 ( .A(n516), .B(n517), .C(n518), .Y(next_hrdata[15]) );
  AOI22X1 U481 ( .A(n443), .B(next_reg[47]), .C(buffer[15]), .D(n446), .Y(n518) );
  OAI21X1 U482 ( .A(n511), .B(n519), .C(n520), .Y(next_reg[47]) );
  AOI22X1 U483 ( .A(hwdata[7]), .B(n514), .C(hwdata[15]), .D(n515), .Y(n520)
         );
  INVX1 U484 ( .A(register[47]), .Y(n519) );
  INVX1 U485 ( .A(hrdata[15]), .Y(n517) );
  OAI21X1 U486 ( .A(n516), .B(n521), .C(n522), .Y(next_hrdata[14]) );
  AOI22X1 U487 ( .A(n443), .B(next_reg[46]), .C(buffer[14]), .D(n446), .Y(n522) );
  OAI21X1 U488 ( .A(n511), .B(n523), .C(n524), .Y(next_reg[46]) );
  AOI22X1 U489 ( .A(hwdata[6]), .B(n514), .C(hwdata[14]), .D(n515), .Y(n524)
         );
  INVX1 U490 ( .A(register[46]), .Y(n523) );
  INVX1 U491 ( .A(hrdata[14]), .Y(n521) );
  OAI21X1 U492 ( .A(n516), .B(n525), .C(n526), .Y(next_hrdata[13]) );
  AOI22X1 U493 ( .A(n443), .B(next_reg[45]), .C(buffer[13]), .D(n446), .Y(n526) );
  OAI21X1 U494 ( .A(n511), .B(n527), .C(n528), .Y(next_reg[45]) );
  AOI22X1 U495 ( .A(hwdata[5]), .B(n514), .C(hwdata[13]), .D(n515), .Y(n528)
         );
  INVX1 U496 ( .A(register[45]), .Y(n527) );
  INVX1 U497 ( .A(hrdata[13]), .Y(n525) );
  OAI21X1 U498 ( .A(n516), .B(n529), .C(n530), .Y(next_hrdata[12]) );
  AOI22X1 U499 ( .A(n443), .B(next_reg[44]), .C(buffer[12]), .D(n446), .Y(n530) );
  OAI21X1 U500 ( .A(n511), .B(n531), .C(n532), .Y(next_reg[44]) );
  AOI22X1 U501 ( .A(hwdata[4]), .B(n514), .C(hwdata[12]), .D(n515), .Y(n532)
         );
  INVX1 U502 ( .A(register[44]), .Y(n531) );
  INVX1 U503 ( .A(hrdata[12]), .Y(n529) );
  OAI21X1 U504 ( .A(n516), .B(n533), .C(n534), .Y(next_hrdata[11]) );
  AOI22X1 U505 ( .A(n443), .B(next_reg[43]), .C(buffer[11]), .D(n446), .Y(n534) );
  OAI21X1 U506 ( .A(n511), .B(n535), .C(n536), .Y(next_reg[43]) );
  AOI22X1 U507 ( .A(hwdata[3]), .B(n514), .C(hwdata[11]), .D(n515), .Y(n536)
         );
  INVX1 U508 ( .A(register[43]), .Y(n535) );
  INVX1 U509 ( .A(hrdata[11]), .Y(n533) );
  OAI21X1 U510 ( .A(n516), .B(n537), .C(n538), .Y(next_hrdata[10]) );
  AOI22X1 U511 ( .A(n443), .B(next_reg[42]), .C(buffer[10]), .D(n446), .Y(n538) );
  OAI21X1 U512 ( .A(n511), .B(n539), .C(n540), .Y(next_reg[42]) );
  AOI22X1 U513 ( .A(n514), .B(hwdata[2]), .C(hwdata[10]), .D(n515), .Y(n540)
         );
  INVX1 U514 ( .A(register[42]), .Y(n539) );
  INVX1 U515 ( .A(n541), .Y(n443) );
  NAND3X1 U516 ( .A(n542), .B(hsize[0]), .C(n543), .Y(n541) );
  INVX1 U517 ( .A(hrdata[10]), .Y(n537) );
  INVX1 U518 ( .A(n447), .Y(n516) );
  NAND3X1 U519 ( .A(n544), .B(n545), .C(n546), .Y(next_hrdata[0]) );
  AOI22X1 U520 ( .A(hrdata[0]), .B(n463), .C(buffer[0]), .D(n446), .Y(n546) );
  OAI21X1 U521 ( .A(n547), .B(n548), .C(n549), .Y(n463) );
  NAND2X1 U522 ( .A(next_reg[40]), .B(n462), .Y(n545) );
  OAI22X1 U523 ( .A(n508), .B(n550), .C(n551), .D(n552), .Y(n462) );
  OAI21X1 U524 ( .A(n553), .B(n550), .C(n543), .Y(n552) );
  NAND2X1 U525 ( .A(n554), .B(n555), .Y(n551) );
  AOI21X1 U526 ( .A(n556), .B(n557), .C(n558), .Y(next_reg[40]) );
  AOI22X1 U527 ( .A(n515), .B(hwdata[8]), .C(hwdata[0]), .D(n514), .Y(n557) );
  AND2X1 U528 ( .A(n559), .B(n560), .Y(n514) );
  AND2X1 U529 ( .A(n561), .B(n560), .Y(n515) );
  NAND2X1 U530 ( .A(register[40]), .B(n562), .Y(n556) );
  AOI22X1 U531 ( .A(n455), .B(n563), .C(hwdata[0]), .D(n497), .Y(n544) );
  OAI21X1 U532 ( .A(n564), .B(n565), .C(n469), .Y(n497) );
  NAND2X1 U533 ( .A(n543), .B(n566), .Y(n469) );
  OAI22X1 U534 ( .A(n553), .B(n550), .C(N66), .D(n555), .Y(n566) );
  INVX1 U535 ( .A(n559), .Y(n553) );
  INVX1 U536 ( .A(n548), .Y(n543) );
  NAND2X1 U537 ( .A(n567), .B(n568), .Y(n548) );
  NAND2X1 U538 ( .A(n455), .B(n437), .Y(n565) );
  INVX1 U539 ( .A(n435), .Y(n437) );
  NAND3X1 U540 ( .A(n560), .B(n569), .C(n570), .Y(n435) );
  OAI21X1 U541 ( .A(n510), .B(n571), .C(n572), .Y(n563) );
  AOI22X1 U542 ( .A(n573), .B(rx_error), .C(rx_data_ready), .D(n574), .Y(n572)
         );
  INVX1 U543 ( .A(n509), .Y(n574) );
  NAND3X1 U544 ( .A(haddr[2]), .B(n575), .C(n576), .Y(n509) );
  NOR2X1 U545 ( .A(haddr[0]), .B(n458), .Y(n573) );
  INVX1 U546 ( .A(n508), .Y(n455) );
  INVX1 U547 ( .A(n577), .Y(n693) );
  AOI22X1 U548 ( .A(buffer[16]), .B(n431), .C(hrdata[16]), .D(n430), .Y(n577)
         );
  INVX1 U549 ( .A(n578), .Y(n694) );
  AOI22X1 U550 ( .A(buffer[17]), .B(n431), .C(hrdata[17]), .D(n430), .Y(n578)
         );
  INVX1 U551 ( .A(n579), .Y(n695) );
  AOI22X1 U552 ( .A(buffer[18]), .B(n431), .C(hrdata[18]), .D(n430), .Y(n579)
         );
  INVX1 U553 ( .A(n580), .Y(n696) );
  AOI22X1 U554 ( .A(buffer[19]), .B(n431), .C(hrdata[19]), .D(n430), .Y(n580)
         );
  INVX1 U555 ( .A(n581), .Y(n697) );
  AOI22X1 U556 ( .A(buffer[20]), .B(n431), .C(hrdata[20]), .D(n447), .Y(n581)
         );
  INVX1 U557 ( .A(n582), .Y(n698) );
  AOI22X1 U558 ( .A(buffer[21]), .B(n431), .C(hrdata[21]), .D(n447), .Y(n582)
         );
  INVX1 U559 ( .A(n583), .Y(n699) );
  AOI22X1 U560 ( .A(buffer[22]), .B(n431), .C(hrdata[22]), .D(n447), .Y(n583)
         );
  INVX1 U561 ( .A(n584), .Y(n700) );
  AOI22X1 U562 ( .A(buffer[23]), .B(n431), .C(hrdata[23]), .D(n447), .Y(n584)
         );
  INVX1 U563 ( .A(n585), .Y(n701) );
  AOI22X1 U564 ( .A(buffer[24]), .B(n431), .C(hrdata[24]), .D(n447), .Y(n585)
         );
  INVX1 U565 ( .A(n586), .Y(n702) );
  AOI22X1 U566 ( .A(buffer[25]), .B(n431), .C(hrdata[25]), .D(n447), .Y(n586)
         );
  INVX1 U567 ( .A(n587), .Y(n703) );
  AOI22X1 U568 ( .A(buffer[26]), .B(n431), .C(hrdata[26]), .D(n447), .Y(n587)
         );
  INVX1 U569 ( .A(n588), .Y(n704) );
  AOI22X1 U570 ( .A(buffer[27]), .B(n431), .C(hrdata[27]), .D(n447), .Y(n588)
         );
  INVX1 U571 ( .A(n589), .Y(n705) );
  AOI22X1 U572 ( .A(buffer[28]), .B(n431), .C(hrdata[28]), .D(n447), .Y(n589)
         );
  INVX1 U573 ( .A(n590), .Y(n706) );
  AOI22X1 U574 ( .A(buffer[29]), .B(n431), .C(hrdata[29]), .D(n447), .Y(n590)
         );
  INVX1 U575 ( .A(n591), .Y(n707) );
  AOI22X1 U576 ( .A(buffer[30]), .B(n446), .C(hrdata[30]), .D(n447), .Y(n591)
         );
  INVX1 U577 ( .A(n592), .Y(n708) );
  AOI22X1 U578 ( .A(buffer[31]), .B(n446), .C(hrdata[31]), .D(n447), .Y(n592)
         );
  OAI21X1 U579 ( .A(n547), .B(n593), .C(n549), .Y(n447) );
  INVX1 U580 ( .A(n594), .Y(n549) );
  OAI21X1 U581 ( .A(n595), .B(n508), .C(n596), .Y(n594) );
  MUX2X1 U582 ( .B(n597), .A(n598), .S(n567), .Y(n596) );
  INVX1 U583 ( .A(n568), .Y(n598) );
  OAI21X1 U584 ( .A(haddr[3]), .B(n599), .C(n600), .Y(n568) );
  AND2X1 U585 ( .A(n601), .B(n602), .Y(n600) );
  OAI21X1 U586 ( .A(n603), .B(n604), .C(n605), .Y(n601) );
  XOR2X1 U587 ( .A(n606), .B(n607), .Y(n605) );
  XNOR2X1 U588 ( .A(prev_haddr[3]), .B(n608), .Y(n607) );
  NOR2X1 U589 ( .A(n609), .B(n610), .Y(n606) );
  INVX1 U590 ( .A(prev_haddr[2]), .Y(n609) );
  INVX1 U591 ( .A(n599), .Y(n603) );
  OAI21X1 U592 ( .A(n611), .B(n612), .C(n613), .Y(n599) );
  OAI21X1 U593 ( .A(n614), .B(n615), .C(n608), .Y(n613) );
  NAND2X1 U594 ( .A(n614), .B(n615), .Y(n608) );
  XOR2X1 U595 ( .A(n610), .B(prev_haddr[2]), .Y(n615) );
  NAND3X1 U596 ( .A(n616), .B(prev_haddr[0]), .C(prev_haddr[1]), .Y(n610) );
  OR2X1 U597 ( .A(n576), .B(n614), .Y(n612) );
  NOR2X1 U598 ( .A(n617), .B(n618), .Y(n614) );
  INVX1 U599 ( .A(n619), .Y(n617) );
  AND2X1 U600 ( .A(n618), .B(n620), .Y(n611) );
  OAI21X1 U601 ( .A(haddr[0]), .B(n619), .C(haddr[1]), .Y(n620) );
  XNOR2X1 U602 ( .A(n621), .B(n454), .Y(n619) );
  INVX1 U603 ( .A(n616), .Y(n454) );
  XNOR2X1 U604 ( .A(n622), .B(prev_haddr[1]), .Y(n618) );
  NAND2X1 U605 ( .A(n616), .B(prev_haddr[0]), .Y(n622) );
  NOR2X1 U606 ( .A(n623), .B(n624), .Y(n597) );
  INVX1 U607 ( .A(n625), .Y(n623) );
  NAND3X1 U608 ( .A(n625), .B(n593), .C(n624), .Y(n508) );
  NOR2X1 U609 ( .A(n626), .B(hwrite), .Y(n624) );
  AOI21X1 U610 ( .A(haddr[1]), .B(haddr[3]), .C(n627), .Y(n595) );
  OAI21X1 U611 ( .A(n628), .B(n456), .C(n602), .Y(n627) );
  INVX1 U612 ( .A(n629), .Y(n602) );
  INVX1 U613 ( .A(n567), .Y(n593) );
  AOI21X1 U614 ( .A(N66), .B(n542), .C(n561), .Y(n547) );
  INVX1 U615 ( .A(n555), .Y(n542) );
  NAND2X1 U616 ( .A(n616), .B(n570), .Y(n555) );
  NOR2X1 U617 ( .A(prev_hsize[0]), .B(prev_hsize[1]), .Y(n616) );
  NOR2X1 U618 ( .A(n625), .B(n567), .Y(n446) );
  NOR2X1 U619 ( .A(n630), .B(n631), .Y(n567) );
  NAND3X1 U620 ( .A(prev_hwrite), .B(hsel), .C(N93), .Y(n631) );
  OAI21X1 U621 ( .A(prev_haddr[3]), .B(prev_haddr[2]), .C(n632), .Y(n630) );
  NOR2X1 U622 ( .A(hwrite), .B(hresp), .Y(n632) );
  NAND3X1 U623 ( .A(hready), .B(n629), .C(hr_avail), .Y(n625) );
  INVX1 U624 ( .A(n633), .Y(hready) );
  NOR2X1 U625 ( .A(rx_transfer_active), .B(n634), .Y(d_mode) );
  INVX1 U626 ( .A(tx_transfer_active), .Y(n634) );
  AOI21X1 U627 ( .A(n635), .B(n636), .C(n558), .Y(clear) );
  AND2X1 U628 ( .A(prev_clear), .B(n637), .Y(n558) );
  NAND3X1 U629 ( .A(n638), .B(n639), .C(n640), .Y(n636) );
  NOR2X1 U630 ( .A(n641), .B(n642), .Y(n640) );
  NAND3X1 U631 ( .A(n643), .B(n644), .C(n645), .Y(n642) );
  NOR2X1 U632 ( .A(hwdata[20]), .B(n646), .Y(n645) );
  OR2X1 U633 ( .A(hwdata[22]), .B(hwdata[21]), .Y(n646) );
  NOR2X1 U634 ( .A(hwdata[26]), .B(hwdata[25]), .Y(n644) );
  NOR2X1 U635 ( .A(hwdata[24]), .B(hwdata[23]), .Y(n643) );
  NAND3X1 U636 ( .A(n647), .B(n648), .C(n649), .Y(n641) );
  AND2X1 U637 ( .A(n650), .B(n651), .Y(n649) );
  NOR2X1 U638 ( .A(hwdata[9]), .B(hwdata[8]), .Y(n651) );
  NOR2X1 U639 ( .A(hwdata[31]), .B(hwdata[30]), .Y(n650) );
  NOR2X1 U640 ( .A(hwdata[2]), .B(hwdata[29]), .Y(n648) );
  NOR2X1 U641 ( .A(hwdata[28]), .B(hwdata[27]), .Y(n647) );
  NOR2X1 U642 ( .A(n652), .B(n653), .Y(n639) );
  NAND2X1 U643 ( .A(n654), .B(n655), .Y(n653) );
  INVX1 U644 ( .A(hwdata[14]), .Y(n655) );
  NOR2X1 U645 ( .A(hwdata[16]), .B(hwdata[15]), .Y(n654) );
  NAND2X1 U646 ( .A(n656), .B(n657), .Y(n652) );
  NOR2X1 U647 ( .A(hwdata[1]), .B(hwdata[19]), .Y(n657) );
  NOR2X1 U648 ( .A(hwdata[18]), .B(hwdata[17]), .Y(n656) );
  NOR2X1 U649 ( .A(n658), .B(n659), .Y(n638) );
  NAND3X1 U650 ( .A(hwdata[0]), .B(n569), .C(n511), .Y(n659) );
  INVX1 U651 ( .A(n562), .Y(n511) );
  OAI21X1 U652 ( .A(n561), .B(n559), .C(n560), .Y(n562) );
  NOR2X1 U653 ( .A(n660), .B(n626), .Y(n560) );
  NAND3X1 U654 ( .A(hsel), .B(N96), .C(n661), .Y(n626) );
  NOR2X1 U655 ( .A(hresp), .B(n633), .Y(n661) );
  NAND3X1 U656 ( .A(hrready), .B(n662), .C(hwready), .Y(n633) );
  INVX1 U657 ( .A(hresp_high), .Y(n662) );
  OAI21X1 U658 ( .A(prev_hresp_high), .B(n663), .C(n664), .Y(hresp_high) );
  NAND3X1 U659 ( .A(n663), .B(n664), .C(n665), .Y(hresp) );
  NOR2X1 U660 ( .A(prev_hresp_high), .B(prev_hresp), .Y(n665) );
  NAND2X1 U661 ( .A(n666), .B(n667), .Y(n664) );
  INVX1 U662 ( .A(prev_hresp_high), .Y(n667) );
  MUX2X1 U663 ( .B(n668), .A(n669), .S(hwrite), .Y(n666) );
  AOI21X1 U664 ( .A(haddr[2]), .B(n575), .C(n670), .Y(n669) );
  OAI21X1 U665 ( .A(n604), .B(n671), .C(n510), .Y(n670) );
  AOI21X1 U666 ( .A(hsize[0]), .B(n672), .C(n673), .Y(n668) );
  MUX2X1 U667 ( .B(n674), .A(n675), .S(N66), .Y(n673) );
  NOR2X1 U668 ( .A(n672), .B(n676), .Y(n675) );
  OAI21X1 U669 ( .A(n456), .B(n458), .C(n564), .Y(n676) );
  NAND2X1 U670 ( .A(n576), .B(n628), .Y(n564) );
  NAND3X1 U671 ( .A(haddr[2]), .B(n575), .C(haddr[1]), .Y(n458) );
  INVX1 U672 ( .A(haddr[0]), .Y(n456) );
  NAND3X1 U673 ( .A(n637), .B(n677), .C(n629), .Y(n674) );
  NOR2X1 U674 ( .A(haddr[2]), .B(haddr[3]), .Y(n629) );
  INVX1 U675 ( .A(hsize[0]), .Y(n677) );
  NOR2X1 U676 ( .A(n678), .B(n679), .Y(n637) );
  NAND3X1 U677 ( .A(n506), .B(n500), .C(n571), .Y(n679) );
  INVX1 U678 ( .A(buffer_occ[0]), .Y(n571) );
  INVX1 U679 ( .A(buffer_occ[2]), .Y(n500) );
  INVX1 U680 ( .A(buffer_occ[1]), .Y(n506) );
  NAND3X1 U681 ( .A(n680), .B(n681), .C(n682), .Y(n678) );
  NOR2X1 U682 ( .A(buffer_occ[6]), .B(buffer_occ[5]), .Y(n682) );
  INVX1 U683 ( .A(buffer_occ[4]), .Y(n681) );
  INVX1 U684 ( .A(buffer_occ[3]), .Y(n680) );
  NAND2X1 U685 ( .A(n510), .B(n550), .Y(n672) );
  NAND3X1 U686 ( .A(n628), .B(n671), .C(haddr[0]), .Y(n550) );
  INVX1 U687 ( .A(haddr[1]), .Y(n671) );
  OR2X1 U688 ( .A(n575), .B(haddr[2]), .Y(n510) );
  AOI21X1 U689 ( .A(N66), .B(hsize[0]), .C(n683), .Y(n663) );
  NOR3X1 U690 ( .A(n576), .B(n628), .C(n575), .Y(n683) );
  INVX1 U691 ( .A(haddr[3]), .Y(n575) );
  INVX1 U692 ( .A(n604), .Y(n628) );
  NAND2X1 U693 ( .A(haddr[2]), .B(haddr[3]), .Y(n604) );
  NOR2X1 U694 ( .A(haddr[1]), .B(haddr[0]), .Y(n576) );
  INVX1 U695 ( .A(prev_hwrite), .Y(n660) );
  NOR2X1 U696 ( .A(n621), .B(n684), .Y(n559) );
  INVX1 U697 ( .A(prev_haddr[0]), .Y(n621) );
  INVX1 U698 ( .A(n554), .Y(n561) );
  NAND3X1 U699 ( .A(n570), .B(n685), .C(prev_hsize[0]), .Y(n554) );
  INVX1 U700 ( .A(prev_hsize[1]), .Y(n685) );
  NOR2X1 U701 ( .A(n684), .B(prev_haddr[0]), .Y(n570) );
  NAND3X1 U702 ( .A(prev_haddr[2]), .B(n686), .C(prev_haddr[3]), .Y(n684) );
  INVX1 U703 ( .A(prev_haddr[1]), .Y(n686) );
  INVX1 U704 ( .A(n687), .Y(n569) );
  NAND3X1 U705 ( .A(n688), .B(n474), .C(n689), .Y(n687) );
  NOR2X1 U706 ( .A(hwdata[4]), .B(hwdata[3]), .Y(n689) );
  INVX1 U707 ( .A(hwdata[5]), .Y(n474) );
  NOR2X1 U708 ( .A(hwdata[7]), .B(hwdata[6]), .Y(n688) );
  NAND3X1 U709 ( .A(n690), .B(n691), .C(n692), .Y(n658) );
  NOR2X1 U710 ( .A(hwdata[13]), .B(hwdata[12]), .Y(n692) );
  INVX1 U711 ( .A(hwdata[11]), .Y(n691) );
  INVX1 U712 ( .A(hwdata[10]), .Y(n690) );
  INVX1 U713 ( .A(prev_clear), .Y(n635) );
endmodule

