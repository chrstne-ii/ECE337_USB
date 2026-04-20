/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Mon Apr 20 05:24:30 2026
/////////////////////////////////////////////////////////////


module hready_read_fsm_1 ( clk, n_rst, hresp, hwrite, hsel, haddr, hsize, 
        rx_data, hrready, get_rx_data, hr_avail, buffer );
  input [3:0] haddr;
  input [1:0] hsize;
  input [7:0] rx_data;
  output [31:0] buffer;
  input clk, n_rst, hresp, hwrite, hsel;
  output hrready, get_rx_data, hr_avail;
  wire   n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169;
  wire   [4:0] state;
  wire   [4:0] next_state;

  DFFSR \state_reg[0]  ( .D(next_state[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[0]) );
  DFFSR \state_reg[4]  ( .D(next_state[4]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[4]) );
  DFFSR \state_reg[1]  ( .D(next_state[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[1]) );
  DFFSR \state_reg[3]  ( .D(next_state[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[3]) );
  DFFSR \state_reg[2]  ( .D(next_state[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[2]) );
  DFFSR \buffer_reg[23]  ( .D(n192), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[23]) );
  DFFSR \buffer_reg[21]  ( .D(n193), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[21]) );
  DFFSR \buffer_reg[20]  ( .D(n194), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[20]) );
  DFFSR \buffer_reg[19]  ( .D(n195), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[19]) );
  DFFSR \buffer_reg[18]  ( .D(n196), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[18]) );
  DFFSR \buffer_reg[17]  ( .D(n197), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[17]) );
  DFFSR \buffer_reg[16]  ( .D(n198), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[16]) );
  DFFSR \buffer_reg[22]  ( .D(n199), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[22]) );
  DFFSR \buffer_reg[31]  ( .D(n184), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[31]) );
  DFFSR \buffer_reg[30]  ( .D(n185), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[30]) );
  DFFSR \buffer_reg[29]  ( .D(n186), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[29]) );
  DFFSR \buffer_reg[28]  ( .D(n187), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[28]) );
  DFFSR \buffer_reg[27]  ( .D(n188), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[27]) );
  DFFSR \buffer_reg[26]  ( .D(n189), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[26]) );
  DFFSR \buffer_reg[25]  ( .D(n190), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[25]) );
  DFFSR \buffer_reg[24]  ( .D(n191), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[24]) );
  DFFSR \buffer_reg[0]  ( .D(n215), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[0]) );
  DFFSR \buffer_reg[1]  ( .D(n214), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[1]) );
  DFFSR \buffer_reg[2]  ( .D(n213), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[2]) );
  DFFSR \buffer_reg[3]  ( .D(n212), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[3]) );
  DFFSR \buffer_reg[4]  ( .D(n211), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[4]) );
  DFFSR \buffer_reg[5]  ( .D(n210), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[5]) );
  DFFSR \buffer_reg[6]  ( .D(n209), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[6]) );
  DFFSR \buffer_reg[7]  ( .D(n208), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[7]) );
  DFFSR \buffer_reg[14]  ( .D(n207), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[14]) );
  DFFSR \buffer_reg[8]  ( .D(n206), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[8]) );
  DFFSR \buffer_reg[9]  ( .D(n205), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[9]) );
  DFFSR \buffer_reg[10]  ( .D(n204), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[10]) );
  DFFSR \buffer_reg[11]  ( .D(n203), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[11]) );
  DFFSR \buffer_reg[12]  ( .D(n202), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[12]) );
  DFFSR \buffer_reg[13]  ( .D(n201), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[13]) );
  DFFSR \buffer_reg[15]  ( .D(n200), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[15]) );
  NAND2X1 U40 ( .A(n38), .B(n39), .Y(next_state[4]) );
  AOI21X1 U41 ( .A(n40), .B(n41), .C(n42), .Y(n39) );
  OAI21X1 U42 ( .A(n43), .B(n44), .C(n45), .Y(n42) );
  AOI22X1 U43 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n38) );
  NAND3X1 U44 ( .A(n50), .B(n51), .C(n52), .Y(next_state[3]) );
  AOI21X1 U45 ( .A(n46), .B(n53), .C(n54), .Y(n52) );
  OAI21X1 U46 ( .A(n55), .B(n44), .C(n56), .Y(n54) );
  INVX1 U47 ( .A(n47), .Y(n53) );
  AOI21X1 U48 ( .A(n57), .B(state[3]), .C(n58), .Y(n50) );
  NAND3X1 U49 ( .A(n59), .B(n60), .C(n61), .Y(next_state[2]) );
  AOI21X1 U50 ( .A(state[0]), .B(n62), .C(n63), .Y(n61) );
  NAND2X1 U51 ( .A(n64), .B(n65), .Y(n63) );
  AOI22X1 U52 ( .A(n57), .B(state[2]), .C(n66), .D(n67), .Y(n59) );
  NAND3X1 U53 ( .A(n68), .B(n69), .C(n70), .Y(next_state[1]) );
  AOI21X1 U54 ( .A(n62), .B(n41), .C(n71), .Y(n70) );
  NAND2X1 U55 ( .A(n64), .B(n72), .Y(n71) );
  OAI22X1 U56 ( .A(n73), .B(n74), .C(state[2]), .D(n55), .Y(n62) );
  INVX1 U57 ( .A(n58), .Y(n69) );
  OAI21X1 U58 ( .A(state[0]), .B(n43), .C(n75), .Y(n58) );
  AOI21X1 U59 ( .A(n76), .B(n77), .C(n78), .Y(n75) );
  NOR2X1 U60 ( .A(n79), .B(n80), .Y(n77) );
  NAND2X1 U61 ( .A(n81), .B(n82), .Y(n80) );
  NAND2X1 U62 ( .A(n83), .B(n84), .Y(n79) );
  NOR2X1 U63 ( .A(n85), .B(n86), .Y(n76) );
  OR2X1 U64 ( .A(n49), .B(n87), .Y(n86) );
  OAI21X1 U65 ( .A(haddr[1]), .B(n88), .C(hsel), .Y(n85) );
  AOI22X1 U66 ( .A(n48), .B(n49), .C(n57), .D(state[1]), .Y(n68) );
  INVX1 U67 ( .A(n45), .Y(n57) );
  OAI21X1 U68 ( .A(n89), .B(n90), .C(n91), .Y(n49) );
  NAND3X1 U69 ( .A(n81), .B(n82), .C(n92), .Y(n91) );
  NOR2X1 U70 ( .A(haddr[0]), .B(n93), .Y(n92) );
  INVX1 U71 ( .A(haddr[1]), .Y(n93) );
  INVX1 U72 ( .A(haddr[3]), .Y(n82) );
  INVX1 U73 ( .A(haddr[2]), .Y(n81) );
  NAND2X1 U74 ( .A(hsize[0]), .B(hsel), .Y(n90) );
  NAND3X1 U75 ( .A(n88), .B(n84), .C(n83), .Y(n89) );
  INVX1 U76 ( .A(hresp), .Y(n83) );
  INVX1 U77 ( .A(hwrite), .Y(n84) );
  INVX1 U78 ( .A(hsize[1]), .Y(n88) );
  INVX1 U79 ( .A(n87), .Y(n48) );
  OR2X1 U80 ( .A(n94), .B(n95), .Y(next_state[0]) );
  NAND3X1 U81 ( .A(n96), .B(n97), .C(n51), .Y(n95) );
  AOI21X1 U82 ( .A(state[0]), .B(n40), .C(n98), .Y(n51) );
  NAND2X1 U83 ( .A(n99), .B(n100), .Y(n98) );
  INVX1 U84 ( .A(n101), .Y(n96) );
  OAI21X1 U85 ( .A(n41), .B(n45), .C(n102), .Y(n94) );
  AND2X1 U86 ( .A(n103), .B(n104), .Y(n102) );
  MUX2X1 U87 ( .B(n105), .A(n106), .S(n107), .Y(n215) );
  INVX1 U88 ( .A(buffer[0]), .Y(n105) );
  MUX2X1 U89 ( .B(n108), .A(n109), .S(n107), .Y(n214) );
  INVX1 U90 ( .A(buffer[1]), .Y(n108) );
  MUX2X1 U91 ( .B(n110), .A(n111), .S(n107), .Y(n213) );
  INVX1 U92 ( .A(buffer[2]), .Y(n110) );
  MUX2X1 U93 ( .B(n112), .A(n113), .S(n107), .Y(n212) );
  INVX1 U94 ( .A(buffer[3]), .Y(n112) );
  MUX2X1 U95 ( .B(n114), .A(n115), .S(n107), .Y(n211) );
  INVX1 U96 ( .A(buffer[4]), .Y(n114) );
  MUX2X1 U97 ( .B(n116), .A(n117), .S(n107), .Y(n210) );
  INVX1 U98 ( .A(buffer[5]), .Y(n116) );
  MUX2X1 U99 ( .B(n118), .A(n119), .S(n107), .Y(n209) );
  INVX1 U100 ( .A(buffer[6]), .Y(n118) );
  MUX2X1 U101 ( .B(n120), .A(n121), .S(n107), .Y(n208) );
  INVX1 U102 ( .A(buffer[7]), .Y(n120) );
  OAI21X1 U103 ( .A(n122), .B(n119), .C(n123), .Y(n207) );
  NAND2X1 U104 ( .A(buffer[14]), .B(n124), .Y(n123) );
  OAI21X1 U105 ( .A(n122), .B(n106), .C(n125), .Y(n206) );
  NAND2X1 U106 ( .A(buffer[8]), .B(n124), .Y(n125) );
  OAI21X1 U107 ( .A(n122), .B(n109), .C(n126), .Y(n205) );
  NAND2X1 U108 ( .A(buffer[9]), .B(n124), .Y(n126) );
  OAI21X1 U109 ( .A(n122), .B(n111), .C(n127), .Y(n204) );
  NAND2X1 U110 ( .A(buffer[10]), .B(n124), .Y(n127) );
  OAI21X1 U111 ( .A(n122), .B(n113), .C(n128), .Y(n203) );
  NAND2X1 U112 ( .A(buffer[11]), .B(n124), .Y(n128) );
  OAI21X1 U113 ( .A(n122), .B(n115), .C(n129), .Y(n202) );
  NAND2X1 U114 ( .A(buffer[12]), .B(n124), .Y(n129) );
  OAI21X1 U115 ( .A(n122), .B(n117), .C(n130), .Y(n201) );
  NAND2X1 U116 ( .A(buffer[13]), .B(n124), .Y(n130) );
  OAI21X1 U117 ( .A(n122), .B(n121), .C(n131), .Y(n200) );
  NAND2X1 U118 ( .A(buffer[15]), .B(n124), .Y(n131) );
  INVX1 U119 ( .A(n132), .Y(n122) );
  OAI21X1 U120 ( .A(n97), .B(n119), .C(n133), .Y(n199) );
  NAND2X1 U121 ( .A(buffer[22]), .B(n134), .Y(n133) );
  OAI21X1 U122 ( .A(n97), .B(n106), .C(n135), .Y(n198) );
  NAND2X1 U123 ( .A(buffer[16]), .B(n134), .Y(n135) );
  OAI21X1 U124 ( .A(n97), .B(n109), .C(n136), .Y(n197) );
  NAND2X1 U125 ( .A(buffer[17]), .B(n134), .Y(n136) );
  OAI21X1 U126 ( .A(n97), .B(n111), .C(n137), .Y(n196) );
  NAND2X1 U127 ( .A(buffer[18]), .B(n134), .Y(n137) );
  OAI21X1 U128 ( .A(n97), .B(n113), .C(n138), .Y(n195) );
  NAND2X1 U129 ( .A(buffer[19]), .B(n134), .Y(n138) );
  OAI21X1 U130 ( .A(n97), .B(n115), .C(n139), .Y(n194) );
  NAND2X1 U131 ( .A(buffer[20]), .B(n134), .Y(n139) );
  OAI21X1 U132 ( .A(n97), .B(n117), .C(n140), .Y(n193) );
  NAND2X1 U133 ( .A(buffer[21]), .B(n134), .Y(n140) );
  OAI21X1 U134 ( .A(n97), .B(n121), .C(n141), .Y(n192) );
  NAND2X1 U135 ( .A(buffer[23]), .B(n134), .Y(n141) );
  OAI21X1 U136 ( .A(n106), .B(n100), .C(n142), .Y(n191) );
  NAND2X1 U137 ( .A(buffer[24]), .B(n143), .Y(n142) );
  INVX1 U138 ( .A(rx_data[0]), .Y(n106) );
  OAI21X1 U139 ( .A(n109), .B(n100), .C(n144), .Y(n190) );
  NAND2X1 U140 ( .A(buffer[25]), .B(n143), .Y(n144) );
  INVX1 U141 ( .A(rx_data[1]), .Y(n109) );
  OAI21X1 U142 ( .A(n111), .B(n100), .C(n145), .Y(n189) );
  NAND2X1 U143 ( .A(buffer[26]), .B(n143), .Y(n145) );
  INVX1 U144 ( .A(rx_data[2]), .Y(n111) );
  OAI21X1 U145 ( .A(n113), .B(n100), .C(n146), .Y(n188) );
  NAND2X1 U146 ( .A(buffer[27]), .B(n143), .Y(n146) );
  INVX1 U147 ( .A(rx_data[3]), .Y(n113) );
  OAI21X1 U148 ( .A(n115), .B(n100), .C(n147), .Y(n187) );
  NAND2X1 U149 ( .A(buffer[28]), .B(n143), .Y(n147) );
  INVX1 U150 ( .A(rx_data[4]), .Y(n115) );
  OAI21X1 U151 ( .A(n117), .B(n100), .C(n148), .Y(n186) );
  NAND2X1 U152 ( .A(buffer[29]), .B(n143), .Y(n148) );
  INVX1 U153 ( .A(rx_data[5]), .Y(n117) );
  OAI21X1 U154 ( .A(n119), .B(n100), .C(n149), .Y(n185) );
  NAND2X1 U155 ( .A(buffer[30]), .B(n143), .Y(n149) );
  INVX1 U156 ( .A(rx_data[6]), .Y(n119) );
  OAI21X1 U157 ( .A(n121), .B(n100), .C(n150), .Y(n184) );
  NAND2X1 U158 ( .A(buffer[31]), .B(n143), .Y(n150) );
  INVX1 U159 ( .A(rx_data[7]), .Y(n121) );
  NAND3X1 U160 ( .A(n87), .B(n151), .C(n45), .Y(hrready) );
  NAND3X1 U161 ( .A(n143), .B(n87), .C(n152), .Y(n45) );
  NOR2X1 U162 ( .A(hr_avail), .B(get_rx_data), .Y(n152) );
  INVX1 U163 ( .A(n151), .Y(hr_avail) );
  AND2X1 U164 ( .A(n134), .B(n100), .Y(n143) );
  NAND2X1 U165 ( .A(n153), .B(n154), .Y(n100) );
  AND2X1 U166 ( .A(n97), .B(n124), .Y(n134) );
  NOR2X1 U167 ( .A(n132), .B(n107), .Y(n124) );
  NAND3X1 U168 ( .A(n103), .B(n65), .C(n155), .Y(n107) );
  AOI21X1 U169 ( .A(n156), .B(n46), .C(n157), .Y(n155) );
  INVX1 U170 ( .A(n99), .Y(n157) );
  NAND3X1 U171 ( .A(state[0]), .B(n158), .C(n159), .Y(n99) );
  NOR2X1 U172 ( .A(n41), .B(n73), .Y(n156) );
  INVX1 U173 ( .A(n78), .Y(n65) );
  NOR2X1 U174 ( .A(n44), .B(n160), .Y(n78) );
  NAND2X1 U175 ( .A(state[2]), .B(state[0]), .Y(n44) );
  NAND2X1 U176 ( .A(n161), .B(n153), .Y(n103) );
  OAI21X1 U177 ( .A(n162), .B(n41), .C(n104), .Y(n132) );
  NAND3X1 U178 ( .A(n41), .B(n67), .C(n66), .Y(n104) );
  INVX1 U179 ( .A(n163), .Y(n66) );
  INVX1 U180 ( .A(n164), .Y(n97) );
  OAI21X1 U181 ( .A(n47), .B(n74), .C(n64), .Y(n164) );
  NAND3X1 U182 ( .A(n161), .B(n41), .C(state[2]), .Y(n64) );
  INVX1 U183 ( .A(n55), .Y(n161) );
  NAND2X1 U184 ( .A(state[0]), .B(n73), .Y(n47) );
  NAND3X1 U185 ( .A(n154), .B(n158), .C(state[0]), .Y(n151) );
  NAND3X1 U186 ( .A(n153), .B(n73), .C(n165), .Y(n87) );
  OR2X1 U187 ( .A(n101), .B(n166), .Y(get_rx_data) );
  OAI21X1 U188 ( .A(n41), .B(n55), .C(n72), .Y(n166) );
  NAND3X1 U189 ( .A(state[0]), .B(n73), .C(n165), .Y(n72) );
  NOR2X1 U190 ( .A(state[4]), .B(state[3]), .Y(n165) );
  NAND3X1 U191 ( .A(n167), .B(n67), .C(state[1]), .Y(n55) );
  NAND2X1 U192 ( .A(n168), .B(n60), .Y(n101) );
  INVX1 U193 ( .A(n169), .Y(n60) );
  OAI21X1 U194 ( .A(state[0]), .B(n162), .C(n56), .Y(n169) );
  NAND3X1 U195 ( .A(n154), .B(n41), .C(state[2]), .Y(n56) );
  INVX1 U196 ( .A(n160), .Y(n154) );
  NAND3X1 U197 ( .A(n73), .B(n67), .C(state[3]), .Y(n160) );
  AOI21X1 U198 ( .A(state[2]), .B(n159), .C(n40), .Y(n162) );
  NOR2X1 U199 ( .A(n163), .B(n67), .Y(n40) );
  NAND3X1 U200 ( .A(n73), .B(n167), .C(state[2]), .Y(n163) );
  INVX1 U201 ( .A(state[1]), .Y(n73) );
  AOI22X1 U202 ( .A(n159), .B(n153), .C(n46), .D(n41), .Y(n168) );
  INVX1 U203 ( .A(state[0]), .Y(n41) );
  INVX1 U204 ( .A(n74), .Y(n46) );
  NAND3X1 U205 ( .A(n158), .B(n167), .C(state[4]), .Y(n74) );
  INVX1 U206 ( .A(state[3]), .Y(n167) );
  INVX1 U207 ( .A(state[2]), .Y(n158) );
  NOR2X1 U208 ( .A(state[0]), .B(state[2]), .Y(n153) );
  INVX1 U209 ( .A(n43), .Y(n159) );
  NAND3X1 U210 ( .A(state[3]), .B(n67), .C(state[1]), .Y(n43) );
  INVX1 U211 ( .A(state[4]), .Y(n67) );
endmodule


module hready_read_fsm_0 ( clk, n_rst, hresp, hwrite, hsel, haddr, hsize, 
        rx_data, hrready, get_rx_data, hr_avail, buffer );
  input [3:0] haddr;
  input [1:0] hsize;
  input [7:0] rx_data;
  output [31:0] buffer;
  input clk, n_rst, hresp, hwrite, hsel;
  output hrready, get_rx_data, hr_avail;
  wire   n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221;
  wire   [4:0] state;
  wire   [4:0] next_state;

  DFFSR \state_reg[0]  ( .D(next_state[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[0]) );
  DFFSR \state_reg[4]  ( .D(next_state[4]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[4]) );
  DFFSR \state_reg[1]  ( .D(next_state[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[1]) );
  DFFSR \state_reg[3]  ( .D(next_state[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[3]) );
  DFFSR \state_reg[2]  ( .D(next_state[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[2]) );
  DFFSR \buffer_reg[23]  ( .D(n213), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[23]) );
  DFFSR \buffer_reg[21]  ( .D(n212), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[21]) );
  DFFSR \buffer_reg[20]  ( .D(n211), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[20]) );
  DFFSR \buffer_reg[19]  ( .D(n210), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[19]) );
  DFFSR \buffer_reg[18]  ( .D(n209), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[18]) );
  DFFSR \buffer_reg[17]  ( .D(n208), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[17]) );
  DFFSR \buffer_reg[16]  ( .D(n207), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[16]) );
  DFFSR \buffer_reg[22]  ( .D(n206), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[22]) );
  DFFSR \buffer_reg[31]  ( .D(n221), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[31]) );
  DFFSR \buffer_reg[30]  ( .D(n220), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[30]) );
  DFFSR \buffer_reg[29]  ( .D(n219), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[29]) );
  DFFSR \buffer_reg[28]  ( .D(n218), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[28]) );
  DFFSR \buffer_reg[27]  ( .D(n217), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[27]) );
  DFFSR \buffer_reg[26]  ( .D(n216), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[26]) );
  DFFSR \buffer_reg[25]  ( .D(n215), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[25]) );
  DFFSR \buffer_reg[24]  ( .D(n214), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[24]) );
  DFFSR \buffer_reg[0]  ( .D(n171), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[0]) );
  DFFSR \buffer_reg[1]  ( .D(n172), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[1]) );
  DFFSR \buffer_reg[2]  ( .D(n173), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[2]) );
  DFFSR \buffer_reg[3]  ( .D(n174), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[3]) );
  DFFSR \buffer_reg[4]  ( .D(n175), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[4]) );
  DFFSR \buffer_reg[5]  ( .D(n176), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[5]) );
  DFFSR \buffer_reg[6]  ( .D(n177), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[6]) );
  DFFSR \buffer_reg[7]  ( .D(n178), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[7]) );
  DFFSR \buffer_reg[14]  ( .D(n179), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[14]) );
  DFFSR \buffer_reg[8]  ( .D(n180), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[8]) );
  DFFSR \buffer_reg[9]  ( .D(n181), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[9]) );
  DFFSR \buffer_reg[10]  ( .D(n182), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[10]) );
  DFFSR \buffer_reg[11]  ( .D(n183), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[11]) );
  DFFSR \buffer_reg[12]  ( .D(n203), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[12]) );
  DFFSR \buffer_reg[13]  ( .D(n204), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[13]) );
  DFFSR \buffer_reg[15]  ( .D(n205), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[15]) );
  NAND2X1 U40 ( .A(n38), .B(n39), .Y(next_state[4]) );
  AOI21X1 U41 ( .A(n40), .B(n41), .C(n42), .Y(n39) );
  OAI21X1 U42 ( .A(n43), .B(n44), .C(n45), .Y(n42) );
  AOI22X1 U43 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n38) );
  NAND3X1 U44 ( .A(n50), .B(n51), .C(n52), .Y(next_state[3]) );
  AOI21X1 U45 ( .A(n46), .B(n53), .C(n54), .Y(n52) );
  OAI21X1 U46 ( .A(n55), .B(n44), .C(n56), .Y(n54) );
  INVX1 U47 ( .A(n47), .Y(n53) );
  AOI21X1 U48 ( .A(n57), .B(state[3]), .C(n58), .Y(n50) );
  NAND3X1 U49 ( .A(n59), .B(n60), .C(n61), .Y(next_state[2]) );
  AOI21X1 U50 ( .A(state[0]), .B(n62), .C(n63), .Y(n61) );
  NAND2X1 U51 ( .A(n64), .B(n65), .Y(n63) );
  AOI22X1 U52 ( .A(n57), .B(state[2]), .C(n66), .D(n67), .Y(n59) );
  NAND3X1 U53 ( .A(n68), .B(n69), .C(n70), .Y(next_state[1]) );
  AOI21X1 U54 ( .A(n62), .B(n41), .C(n71), .Y(n70) );
  NAND2X1 U55 ( .A(n64), .B(n72), .Y(n71) );
  OAI22X1 U56 ( .A(n73), .B(n74), .C(state[2]), .D(n55), .Y(n62) );
  INVX1 U57 ( .A(n58), .Y(n69) );
  OAI21X1 U58 ( .A(state[0]), .B(n43), .C(n75), .Y(n58) );
  AOI21X1 U59 ( .A(n76), .B(n77), .C(n78), .Y(n75) );
  NOR2X1 U60 ( .A(n79), .B(n80), .Y(n77) );
  NAND2X1 U61 ( .A(n81), .B(n82), .Y(n80) );
  NAND2X1 U62 ( .A(n83), .B(n84), .Y(n79) );
  NOR2X1 U63 ( .A(n85), .B(n86), .Y(n76) );
  OR2X1 U64 ( .A(n49), .B(n87), .Y(n86) );
  OAI21X1 U65 ( .A(haddr[1]), .B(n88), .C(hsel), .Y(n85) );
  AOI22X1 U66 ( .A(n48), .B(n49), .C(n57), .D(state[1]), .Y(n68) );
  INVX1 U67 ( .A(n45), .Y(n57) );
  OAI21X1 U68 ( .A(n89), .B(n90), .C(n91), .Y(n49) );
  NAND3X1 U69 ( .A(n81), .B(n82), .C(n92), .Y(n91) );
  NOR2X1 U70 ( .A(haddr[0]), .B(n93), .Y(n92) );
  INVX1 U71 ( .A(haddr[1]), .Y(n93) );
  INVX1 U72 ( .A(haddr[3]), .Y(n82) );
  INVX1 U73 ( .A(haddr[2]), .Y(n81) );
  NAND2X1 U74 ( .A(hsize[0]), .B(hsel), .Y(n90) );
  NAND3X1 U75 ( .A(n88), .B(n84), .C(n83), .Y(n89) );
  INVX1 U76 ( .A(hresp), .Y(n83) );
  INVX1 U77 ( .A(hwrite), .Y(n84) );
  INVX1 U78 ( .A(hsize[1]), .Y(n88) );
  INVX1 U79 ( .A(n87), .Y(n48) );
  OR2X1 U80 ( .A(n94), .B(n95), .Y(next_state[0]) );
  NAND3X1 U81 ( .A(n96), .B(n97), .C(n51), .Y(n95) );
  AOI21X1 U82 ( .A(state[0]), .B(n40), .C(n98), .Y(n51) );
  NAND2X1 U83 ( .A(n99), .B(n100), .Y(n98) );
  INVX1 U84 ( .A(n101), .Y(n96) );
  OAI21X1 U85 ( .A(n41), .B(n45), .C(n102), .Y(n94) );
  AND2X1 U86 ( .A(n103), .B(n104), .Y(n102) );
  MUX2X1 U87 ( .B(n105), .A(n106), .S(n107), .Y(n171) );
  INVX1 U88 ( .A(buffer[0]), .Y(n105) );
  MUX2X1 U89 ( .B(n108), .A(n109), .S(n107), .Y(n172) );
  INVX1 U90 ( .A(buffer[1]), .Y(n108) );
  MUX2X1 U91 ( .B(n110), .A(n111), .S(n107), .Y(n173) );
  INVX1 U92 ( .A(buffer[2]), .Y(n110) );
  MUX2X1 U93 ( .B(n112), .A(n113), .S(n107), .Y(n174) );
  INVX1 U94 ( .A(buffer[3]), .Y(n112) );
  MUX2X1 U95 ( .B(n114), .A(n115), .S(n107), .Y(n175) );
  INVX1 U96 ( .A(buffer[4]), .Y(n114) );
  MUX2X1 U97 ( .B(n116), .A(n117), .S(n107), .Y(n176) );
  INVX1 U98 ( .A(buffer[5]), .Y(n116) );
  MUX2X1 U99 ( .B(n118), .A(n119), .S(n107), .Y(n177) );
  INVX1 U100 ( .A(buffer[6]), .Y(n118) );
  MUX2X1 U101 ( .B(n120), .A(n121), .S(n107), .Y(n178) );
  INVX1 U102 ( .A(buffer[7]), .Y(n120) );
  OAI21X1 U103 ( .A(n122), .B(n119), .C(n123), .Y(n179) );
  NAND2X1 U104 ( .A(buffer[14]), .B(n124), .Y(n123) );
  OAI21X1 U105 ( .A(n122), .B(n106), .C(n125), .Y(n180) );
  NAND2X1 U106 ( .A(buffer[8]), .B(n124), .Y(n125) );
  OAI21X1 U107 ( .A(n122), .B(n109), .C(n126), .Y(n181) );
  NAND2X1 U108 ( .A(buffer[9]), .B(n124), .Y(n126) );
  OAI21X1 U109 ( .A(n122), .B(n111), .C(n127), .Y(n182) );
  NAND2X1 U110 ( .A(buffer[10]), .B(n124), .Y(n127) );
  OAI21X1 U111 ( .A(n122), .B(n113), .C(n128), .Y(n183) );
  NAND2X1 U112 ( .A(buffer[11]), .B(n124), .Y(n128) );
  OAI21X1 U113 ( .A(n122), .B(n115), .C(n129), .Y(n203) );
  NAND2X1 U114 ( .A(buffer[12]), .B(n124), .Y(n129) );
  OAI21X1 U115 ( .A(n122), .B(n117), .C(n130), .Y(n204) );
  NAND2X1 U116 ( .A(buffer[13]), .B(n124), .Y(n130) );
  OAI21X1 U117 ( .A(n122), .B(n121), .C(n131), .Y(n205) );
  NAND2X1 U118 ( .A(buffer[15]), .B(n124), .Y(n131) );
  INVX1 U119 ( .A(n132), .Y(n122) );
  OAI21X1 U120 ( .A(n97), .B(n119), .C(n133), .Y(n206) );
  NAND2X1 U121 ( .A(buffer[22]), .B(n134), .Y(n133) );
  OAI21X1 U122 ( .A(n97), .B(n106), .C(n135), .Y(n207) );
  NAND2X1 U123 ( .A(buffer[16]), .B(n134), .Y(n135) );
  OAI21X1 U124 ( .A(n97), .B(n109), .C(n136), .Y(n208) );
  NAND2X1 U125 ( .A(buffer[17]), .B(n134), .Y(n136) );
  OAI21X1 U126 ( .A(n97), .B(n111), .C(n137), .Y(n209) );
  NAND2X1 U127 ( .A(buffer[18]), .B(n134), .Y(n137) );
  OAI21X1 U128 ( .A(n97), .B(n113), .C(n138), .Y(n210) );
  NAND2X1 U129 ( .A(buffer[19]), .B(n134), .Y(n138) );
  OAI21X1 U130 ( .A(n97), .B(n115), .C(n139), .Y(n211) );
  NAND2X1 U131 ( .A(buffer[20]), .B(n134), .Y(n139) );
  OAI21X1 U132 ( .A(n97), .B(n117), .C(n140), .Y(n212) );
  NAND2X1 U133 ( .A(buffer[21]), .B(n134), .Y(n140) );
  OAI21X1 U134 ( .A(n97), .B(n121), .C(n141), .Y(n213) );
  NAND2X1 U135 ( .A(buffer[23]), .B(n134), .Y(n141) );
  OAI21X1 U136 ( .A(n106), .B(n100), .C(n142), .Y(n214) );
  NAND2X1 U137 ( .A(buffer[24]), .B(n143), .Y(n142) );
  INVX1 U138 ( .A(rx_data[0]), .Y(n106) );
  OAI21X1 U139 ( .A(n109), .B(n100), .C(n144), .Y(n215) );
  NAND2X1 U140 ( .A(buffer[25]), .B(n143), .Y(n144) );
  INVX1 U141 ( .A(rx_data[1]), .Y(n109) );
  OAI21X1 U142 ( .A(n111), .B(n100), .C(n145), .Y(n216) );
  NAND2X1 U143 ( .A(buffer[26]), .B(n143), .Y(n145) );
  INVX1 U144 ( .A(rx_data[2]), .Y(n111) );
  OAI21X1 U145 ( .A(n113), .B(n100), .C(n146), .Y(n217) );
  NAND2X1 U146 ( .A(buffer[27]), .B(n143), .Y(n146) );
  INVX1 U147 ( .A(rx_data[3]), .Y(n113) );
  OAI21X1 U148 ( .A(n115), .B(n100), .C(n147), .Y(n218) );
  NAND2X1 U149 ( .A(buffer[28]), .B(n143), .Y(n147) );
  INVX1 U150 ( .A(rx_data[4]), .Y(n115) );
  OAI21X1 U151 ( .A(n117), .B(n100), .C(n148), .Y(n219) );
  NAND2X1 U152 ( .A(buffer[29]), .B(n143), .Y(n148) );
  INVX1 U153 ( .A(rx_data[5]), .Y(n117) );
  OAI21X1 U154 ( .A(n119), .B(n100), .C(n149), .Y(n220) );
  NAND2X1 U155 ( .A(buffer[30]), .B(n143), .Y(n149) );
  INVX1 U156 ( .A(rx_data[6]), .Y(n119) );
  OAI21X1 U157 ( .A(n121), .B(n100), .C(n150), .Y(n221) );
  NAND2X1 U158 ( .A(buffer[31]), .B(n143), .Y(n150) );
  INVX1 U159 ( .A(rx_data[7]), .Y(n121) );
  NAND3X1 U160 ( .A(n87), .B(n151), .C(n45), .Y(hrready) );
  NAND3X1 U161 ( .A(n143), .B(n87), .C(n152), .Y(n45) );
  NOR2X1 U162 ( .A(hr_avail), .B(get_rx_data), .Y(n152) );
  INVX1 U163 ( .A(n151), .Y(hr_avail) );
  AND2X1 U164 ( .A(n134), .B(n100), .Y(n143) );
  NAND2X1 U165 ( .A(n153), .B(n154), .Y(n100) );
  AND2X1 U166 ( .A(n97), .B(n124), .Y(n134) );
  NOR2X1 U167 ( .A(n132), .B(n107), .Y(n124) );
  NAND3X1 U168 ( .A(n103), .B(n65), .C(n155), .Y(n107) );
  AOI21X1 U169 ( .A(n156), .B(n46), .C(n157), .Y(n155) );
  INVX1 U170 ( .A(n99), .Y(n157) );
  NAND3X1 U171 ( .A(state[0]), .B(n158), .C(n159), .Y(n99) );
  NOR2X1 U172 ( .A(n41), .B(n73), .Y(n156) );
  INVX1 U173 ( .A(n78), .Y(n65) );
  NOR2X1 U174 ( .A(n44), .B(n160), .Y(n78) );
  NAND2X1 U175 ( .A(state[2]), .B(state[0]), .Y(n44) );
  NAND2X1 U176 ( .A(n161), .B(n153), .Y(n103) );
  OAI21X1 U177 ( .A(n162), .B(n41), .C(n104), .Y(n132) );
  NAND3X1 U178 ( .A(n41), .B(n67), .C(n66), .Y(n104) );
  INVX1 U179 ( .A(n163), .Y(n66) );
  INVX1 U180 ( .A(n164), .Y(n97) );
  OAI21X1 U181 ( .A(n47), .B(n74), .C(n64), .Y(n164) );
  NAND3X1 U182 ( .A(n161), .B(n41), .C(state[2]), .Y(n64) );
  INVX1 U183 ( .A(n55), .Y(n161) );
  NAND2X1 U184 ( .A(state[0]), .B(n73), .Y(n47) );
  NAND3X1 U185 ( .A(n154), .B(n158), .C(state[0]), .Y(n151) );
  NAND3X1 U186 ( .A(n153), .B(n73), .C(n165), .Y(n87) );
  OR2X1 U187 ( .A(n101), .B(n166), .Y(get_rx_data) );
  OAI21X1 U188 ( .A(n41), .B(n55), .C(n72), .Y(n166) );
  NAND3X1 U189 ( .A(state[0]), .B(n73), .C(n165), .Y(n72) );
  NOR2X1 U190 ( .A(state[4]), .B(state[3]), .Y(n165) );
  NAND3X1 U191 ( .A(n167), .B(n67), .C(state[1]), .Y(n55) );
  NAND2X1 U192 ( .A(n168), .B(n60), .Y(n101) );
  INVX1 U193 ( .A(n169), .Y(n60) );
  OAI21X1 U194 ( .A(state[0]), .B(n162), .C(n56), .Y(n169) );
  NAND3X1 U195 ( .A(n154), .B(n41), .C(state[2]), .Y(n56) );
  INVX1 U196 ( .A(n160), .Y(n154) );
  NAND3X1 U197 ( .A(n73), .B(n67), .C(state[3]), .Y(n160) );
  AOI21X1 U198 ( .A(state[2]), .B(n159), .C(n40), .Y(n162) );
  NOR2X1 U199 ( .A(n163), .B(n67), .Y(n40) );
  NAND3X1 U200 ( .A(n73), .B(n167), .C(state[2]), .Y(n163) );
  INVX1 U201 ( .A(state[1]), .Y(n73) );
  AOI22X1 U202 ( .A(n159), .B(n153), .C(n46), .D(n41), .Y(n168) );
  INVX1 U203 ( .A(state[0]), .Y(n41) );
  INVX1 U204 ( .A(n74), .Y(n46) );
  NAND3X1 U205 ( .A(n158), .B(n167), .C(state[4]), .Y(n74) );
  INVX1 U206 ( .A(state[3]), .Y(n167) );
  INVX1 U207 ( .A(state[2]), .Y(n158) );
  NOR2X1 U208 ( .A(state[0]), .B(state[2]), .Y(n153) );
  INVX1 U209 ( .A(n43), .Y(n159) );
  NAND3X1 U210 ( .A(state[3]), .B(n67), .C(state[1]), .Y(n43) );
  INVX1 U211 ( .A(state[4]), .Y(n67) );
endmodule


module ahb_subordinate ( clk, n_rst, hsel, hwrite, rx_transfer_active, 
        rx_data_ready, rx_error, tx_transfer_active, tx_error, hsize, 
        rx_packet, haddr, buffer_occ, rx_data, hwdata, d_mode, hresp, hready, 
        get_rx_data, store_tx_data, clear, tx_packet, tx_data, hrdata );
  input [1:0] hsize;
  input [2:0] rx_packet;
  input [3:0] haddr;
  input [6:0] buffer_occ;
  input [7:0] rx_data;
  input [31:0] hwdata;
  output [2:0] tx_packet;
  output [7:0] tx_data;
  output [31:0] hrdata;
  input clk, n_rst, hsel, hwrite, rx_transfer_active, rx_data_ready, rx_error,
         tx_transfer_active, tx_error;
  output d_mode, hresp, hready, get_rx_data, store_tx_data, clear;
  wire   hresp_high, \register[0] , prev_hresp_high, prev_hwrite, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420;
  wire   [31:0] buffer;
  wire   [1:0] prev_hsize;
  wire   [3:0] prev_haddr;
  wire   [31:0] next_hrdata;
  wire   [7:0] regD;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47;
  assign clear = 1'b0;
  assign hrdata[31] = 1'b0;
  assign hrdata[30] = 1'b0;
  assign hrdata[29] = 1'b0;
  assign hrdata[28] = 1'b0;
  assign hrdata[27] = 1'b0;
  assign hrdata[26] = 1'b0;
  assign hrdata[25] = 1'b0;
  assign hrdata[24] = 1'b0;
  assign hrdata[23] = 1'b0;
  assign hrdata[22] = 1'b0;
  assign hrdata[21] = 1'b0;
  assign hrdata[20] = 1'b0;
  assign hrdata[19] = 1'b0;
  assign hrdata[18] = 1'b0;
  assign hrdata[17] = 1'b0;
  assign hrdata[16] = 1'b0;
  assign tx_packet[2] = 1'b0;
  assign tx_packet[1] = 1'b0;
  assign tx_packet[0] = 1'b0;
  assign hready = 1'b0;

  DFFSR \prev_hsize_reg[1]  ( .D(hsize[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(prev_hsize[1]) );
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
  DFFSR \register_reg[0]  ( .D(buffer[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        \register[0] ) );
  DFFSR \register_reg[1]  ( .D(buffer[1]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        regD[1]) );
  DFFSR \register_reg[2]  ( .D(buffer[2]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        regD[2]) );
  DFFSR \register_reg[3]  ( .D(buffer[3]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        regD[3]) );
  DFFSR \register_reg[4]  ( .D(buffer[4]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        regD[4]) );
  DFFSR \register_reg[5]  ( .D(buffer[5]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        regD[5]) );
  DFFSR \register_reg[6]  ( .D(buffer[6]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        regD[6]) );
  DFFSR \register_reg[7]  ( .D(buffer[7]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        regD[7]) );
  DFFSR prev_hwrite_reg ( .D(hwrite), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        prev_hwrite) );
  DFFSR \hrdata_reg[0]  ( .D(next_hrdata[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[0]) );
  DFFSR \hrdata_reg[10]  ( .D(next_hrdata[10]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[10]) );
  DFFSR \hrdata_reg[11]  ( .D(next_hrdata[11]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[11]) );
  DFFSR \hrdata_reg[12]  ( .D(next_hrdata[12]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[12]) );
  DFFSR \hrdata_reg[13]  ( .D(next_hrdata[13]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[13]) );
  DFFSR \hrdata_reg[14]  ( .D(next_hrdata[14]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[14]) );
  DFFSR \hrdata_reg[15]  ( .D(next_hrdata[15]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[15]) );
  DFFSR \hrdata_reg[8]  ( .D(next_hrdata[8]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[8]) );
  DFFSR \hrdata_reg[9]  ( .D(next_hrdata[9]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[9]) );
  DFFSR \hrdata_reg[1]  ( .D(next_hrdata[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[1]) );
  DFFSR \hrdata_reg[2]  ( .D(next_hrdata[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[2]) );
  DFFSR \hrdata_reg[3]  ( .D(next_hrdata[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[3]) );
  DFFSR \hrdata_reg[4]  ( .D(next_hrdata[4]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[4]) );
  DFFSR \hrdata_reg[5]  ( .D(next_hrdata[5]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[5]) );
  DFFSR \hrdata_reg[6]  ( .D(next_hrdata[6]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[6]) );
  DFFSR \hrdata_reg[7]  ( .D(next_hrdata[7]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[7]) );
  hready_read_fsm_1 read_fsm ( .clk(clk), .n_rst(n_rst), .hresp(hresp), 
        .hwrite(hwrite), .hsel(hsel), .haddr(haddr), .hsize(hsize), .rx_data(
        rx_data), .get_rx_data(n419), .buffer({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, n417, n415, n413, n411, n409, n407, n405, 
        n403}) );
  hready_read_fsm_0 write_fsm ( .clk(clk), .n_rst(n_rst), .hresp(hresp), 
        .hwrite(hwrite), .hsel(hsel), .haddr(haddr), .hsize(hsize), .rx_data(
        rx_data), .get_rx_data(n420), .buffer({SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, n418, n416, n414, n412, n410, n408, n406, 
        n404}) );
  OAI21X1 U253 ( .A(n291), .B(n292), .C(n293), .Y(next_hrdata[9]) );
  NAND2X1 U254 ( .A(hrdata[9]), .B(n294), .Y(n293) );
  INVX1 U255 ( .A(regD[1]), .Y(n292) );
  OAI21X1 U256 ( .A(n291), .B(n295), .C(n296), .Y(next_hrdata[8]) );
  NAND2X1 U257 ( .A(hrdata[8]), .B(n294), .Y(n296) );
  INVX1 U258 ( .A(\register[0] ), .Y(n295) );
  OAI21X1 U259 ( .A(n297), .B(n298), .C(n299), .Y(next_hrdata[7]) );
  NAND2X1 U260 ( .A(hrdata[7]), .B(n294), .Y(n299) );
  AOI22X1 U261 ( .A(regD[7]), .B(n300), .C(hwdata[7]), .D(n301), .Y(n297) );
  OAI21X1 U262 ( .A(n302), .B(n298), .C(n303), .Y(next_hrdata[6]) );
  NAND2X1 U263 ( .A(hrdata[6]), .B(n294), .Y(n303) );
  AOI22X1 U264 ( .A(regD[6]), .B(n300), .C(hwdata[6]), .D(n301), .Y(n302) );
  OAI21X1 U265 ( .A(n304), .B(n298), .C(n305), .Y(next_hrdata[5]) );
  NAND2X1 U266 ( .A(hrdata[5]), .B(n294), .Y(n305) );
  AOI22X1 U267 ( .A(regD[5]), .B(n300), .C(hwdata[5]), .D(n301), .Y(n304) );
  OAI21X1 U268 ( .A(n306), .B(n298), .C(n307), .Y(next_hrdata[4]) );
  NAND2X1 U269 ( .A(hrdata[4]), .B(n294), .Y(n307) );
  AOI22X1 U270 ( .A(regD[4]), .B(n300), .C(hwdata[4]), .D(n301), .Y(n306) );
  OAI21X1 U271 ( .A(n308), .B(n298), .C(n309), .Y(next_hrdata[3]) );
  NAND2X1 U272 ( .A(hrdata[3]), .B(n294), .Y(n309) );
  AOI22X1 U273 ( .A(regD[3]), .B(n300), .C(hwdata[3]), .D(n301), .Y(n308) );
  OAI21X1 U274 ( .A(n310), .B(n298), .C(n311), .Y(next_hrdata[2]) );
  NAND2X1 U275 ( .A(hrdata[2]), .B(n294), .Y(n311) );
  AOI22X1 U276 ( .A(regD[2]), .B(n300), .C(hwdata[2]), .D(n301), .Y(n310) );
  OAI21X1 U277 ( .A(n312), .B(n298), .C(n313), .Y(next_hrdata[1]) );
  NAND2X1 U278 ( .A(hrdata[1]), .B(n294), .Y(n313) );
  AOI22X1 U279 ( .A(n300), .B(regD[1]), .C(hwdata[1]), .D(n301), .Y(n312) );
  OAI21X1 U280 ( .A(n291), .B(n314), .C(n315), .Y(next_hrdata[15]) );
  NAND2X1 U281 ( .A(hrdata[15]), .B(n294), .Y(n315) );
  INVX1 U282 ( .A(regD[7]), .Y(n314) );
  OAI21X1 U283 ( .A(n291), .B(n316), .C(n317), .Y(next_hrdata[14]) );
  NAND2X1 U284 ( .A(hrdata[14]), .B(n294), .Y(n317) );
  INVX1 U285 ( .A(regD[6]), .Y(n316) );
  OAI21X1 U286 ( .A(n291), .B(n318), .C(n319), .Y(next_hrdata[13]) );
  NAND2X1 U287 ( .A(hrdata[13]), .B(n294), .Y(n319) );
  INVX1 U288 ( .A(regD[5]), .Y(n318) );
  OAI21X1 U289 ( .A(n291), .B(n320), .C(n321), .Y(next_hrdata[12]) );
  NAND2X1 U290 ( .A(hrdata[12]), .B(n294), .Y(n321) );
  INVX1 U291 ( .A(regD[4]), .Y(n320) );
  OAI21X1 U292 ( .A(n291), .B(n322), .C(n323), .Y(next_hrdata[11]) );
  NAND2X1 U293 ( .A(hrdata[11]), .B(n294), .Y(n323) );
  INVX1 U294 ( .A(regD[3]), .Y(n322) );
  OAI21X1 U295 ( .A(n291), .B(n324), .C(n325), .Y(next_hrdata[10]) );
  NAND2X1 U296 ( .A(hrdata[10]), .B(n294), .Y(n325) );
  INVX1 U297 ( .A(regD[2]), .Y(n324) );
  NAND3X1 U298 ( .A(n326), .B(hsize[0]), .C(n327), .Y(n291) );
  OAI21X1 U299 ( .A(n328), .B(n298), .C(n329), .Y(next_hrdata[0]) );
  NAND2X1 U300 ( .A(hrdata[0]), .B(n294), .Y(n329) );
  NAND3X1 U301 ( .A(n330), .B(n331), .C(n327), .Y(n294) );
  INVX1 U302 ( .A(n298), .Y(n327) );
  NAND3X1 U303 ( .A(n332), .B(n333), .C(n326), .Y(n330) );
  NAND3X1 U304 ( .A(n334), .B(prev_hwrite), .C(n335), .Y(n298) );
  NOR2X1 U305 ( .A(n336), .B(n337), .Y(n335) );
  OAI21X1 U306 ( .A(prev_haddr[3]), .B(prev_haddr[2]), .C(n338), .Y(n337) );
  OAI21X1 U307 ( .A(n339), .B(haddr[3]), .C(n340), .Y(n338) );
  OAI21X1 U308 ( .A(n341), .B(n342), .C(n343), .Y(n340) );
  OAI21X1 U309 ( .A(n344), .B(n345), .C(n346), .Y(n343) );
  OAI21X1 U310 ( .A(n347), .B(n348), .C(prev_haddr[3]), .Y(n346) );
  INVX1 U311 ( .A(prev_haddr[3]), .Y(n345) );
  INVX1 U312 ( .A(n342), .Y(n339) );
  OAI21X1 U313 ( .A(n349), .B(n350), .C(haddr[2]), .Y(n342) );
  XOR2X1 U314 ( .A(n347), .B(n348), .Y(n350) );
  XNOR2X1 U315 ( .A(prev_haddr[2]), .B(n344), .Y(n347) );
  NAND2X1 U316 ( .A(prev_haddr[1]), .B(n351), .Y(n344) );
  AOI21X1 U317 ( .A(n352), .B(n353), .C(n354), .Y(n349) );
  AOI21X1 U318 ( .A(haddr[0]), .B(n355), .C(haddr[1]), .Y(n354) );
  NAND3X1 U319 ( .A(haddr[0]), .B(n355), .C(haddr[1]), .Y(n353) );
  INVX1 U320 ( .A(n356), .Y(n355) );
  OAI21X1 U321 ( .A(n356), .B(n357), .C(n348), .Y(n352) );
  NAND2X1 U322 ( .A(n358), .B(n356), .Y(n348) );
  XOR2X1 U323 ( .A(n351), .B(n357), .Y(n358) );
  NOR3X1 U324 ( .A(prev_hsize[0]), .B(prev_hsize[1]), .C(n359), .Y(n351) );
  XOR2X1 U325 ( .A(n359), .B(n360), .Y(n356) );
  NOR2X1 U326 ( .A(prev_hsize[0]), .B(prev_hsize[1]), .Y(n360) );
  NAND2X1 U327 ( .A(n361), .B(n362), .Y(n336) );
  NOR2X1 U328 ( .A(n363), .B(n364), .Y(n334) );
  AOI22X1 U329 ( .A(n300), .B(\register[0] ), .C(hwdata[0]), .D(n301), .Y(n328) );
  OAI21X1 U330 ( .A(n365), .B(n366), .C(n367), .Y(n301) );
  NOR2X1 U331 ( .A(hsize[0]), .B(n368), .Y(n365) );
  INVX1 U332 ( .A(n369), .Y(n300) );
  NAND3X1 U333 ( .A(n331), .B(n367), .C(n366), .Y(n369) );
  INVX1 U334 ( .A(n326), .Y(n366) );
  NOR2X1 U335 ( .A(n370), .B(prev_hsize[0]), .Y(n326) );
  NAND2X1 U336 ( .A(n371), .B(n357), .Y(n367) );
  INVX1 U337 ( .A(prev_haddr[1]), .Y(n357) );
  NAND2X1 U338 ( .A(prev_hsize[0]), .B(n372), .Y(n331) );
  INVX1 U339 ( .A(n370), .Y(n372) );
  NAND3X1 U340 ( .A(n373), .B(n359), .C(n374), .Y(n370) );
  AND2X1 U341 ( .A(prev_haddr[3]), .B(prev_haddr[2]), .Y(n374) );
  INVX1 U342 ( .A(prev_haddr[0]), .Y(n359) );
  NOR2X1 U343 ( .A(prev_hsize[1]), .B(prev_haddr[1]), .Y(n373) );
  OAI21X1 U344 ( .A(n375), .B(n364), .C(n376), .Y(hresp_high) );
  INVX1 U345 ( .A(hsel), .Y(n364) );
  INVX1 U346 ( .A(n363), .Y(n375) );
  OAI21X1 U347 ( .A(n333), .B(n377), .C(n378), .Y(hresp) );
  AOI21X1 U348 ( .A(hsel), .B(n363), .C(prev_hresp_high), .Y(n378) );
  NAND2X1 U349 ( .A(n379), .B(n380), .Y(n363) );
  AOI21X1 U350 ( .A(n381), .B(n382), .C(n383), .Y(n380) );
  OAI21X1 U351 ( .A(n341), .B(n384), .C(n376), .Y(n383) );
  NAND3X1 U352 ( .A(hsize[0]), .B(n362), .C(hsize[1]), .Y(n376) );
  INVX1 U353 ( .A(prev_hresp_high), .Y(n362) );
  OAI21X1 U354 ( .A(hwrite), .B(haddr[0]), .C(n385), .Y(n384) );
  XOR2X1 U355 ( .A(n386), .B(n387), .Y(n382) );
  AND2X1 U356 ( .A(n332), .B(haddr[2]), .Y(n387) );
  XOR2X1 U357 ( .A(n341), .B(n368), .Y(n386) );
  MUX2X1 U358 ( .B(n388), .A(n332), .S(haddr[1]), .Y(n381) );
  NAND2X1 U359 ( .A(n332), .B(n389), .Y(n388) );
  NOR2X1 U360 ( .A(n390), .B(n391), .Y(n379) );
  OAI22X1 U361 ( .A(n392), .B(n361), .C(n368), .D(n393), .Y(n391) );
  INVX1 U362 ( .A(n371), .Y(n393) );
  NOR2X1 U363 ( .A(n385), .B(n389), .Y(n371) );
  INVX1 U364 ( .A(haddr[0]), .Y(n389) );
  INVX1 U365 ( .A(n332), .Y(n368) );
  MUX2X1 U366 ( .B(haddr[1]), .A(haddr[2]), .S(n385), .Y(n392) );
  NAND2X1 U367 ( .A(haddr[3]), .B(haddr[2]), .Y(n385) );
  MUX2X1 U368 ( .B(n394), .A(n395), .S(haddr[2]), .Y(n390) );
  NAND3X1 U369 ( .A(haddr[0]), .B(hsize[1]), .C(haddr[1]), .Y(n395) );
  NAND3X1 U370 ( .A(n332), .B(n361), .C(n396), .Y(n394) );
  OAI21X1 U371 ( .A(n397), .B(n398), .C(n341), .Y(n396) );
  INVX1 U372 ( .A(haddr[3]), .Y(n341) );
  OAI21X1 U373 ( .A(n399), .B(n400), .C(n401), .Y(n398) );
  INVX1 U374 ( .A(buffer_occ[4]), .Y(n401) );
  NAND2X1 U375 ( .A(buffer_occ[3]), .B(buffer_occ[2]), .Y(n400) );
  NAND2X1 U376 ( .A(buffer_occ[1]), .B(buffer_occ[0]), .Y(n399) );
  OR2X1 U377 ( .A(buffer_occ[6]), .B(buffer_occ[5]), .Y(n397) );
  INVX1 U378 ( .A(hwrite), .Y(n361) );
  NAND2X1 U379 ( .A(n333), .B(n377), .Y(n332) );
  INVX1 U380 ( .A(hsize[1]), .Y(n377) );
  INVX1 U381 ( .A(hsize[0]), .Y(n333) );
  AND2X1 U382 ( .A(n420), .B(n419), .Y(get_rx_data) );
  NOR2X1 U383 ( .A(rx_transfer_active), .B(n402), .Y(d_mode) );
  INVX1 U384 ( .A(tx_transfer_active), .Y(n402) );
  AND2X1 U385 ( .A(n418), .B(n417), .Y(buffer[7]) );
  AND2X1 U386 ( .A(n416), .B(n415), .Y(buffer[6]) );
  AND2X1 U387 ( .A(n414), .B(n413), .Y(buffer[5]) );
  AND2X1 U388 ( .A(n412), .B(n411), .Y(buffer[4]) );
  AND2X1 U389 ( .A(n410), .B(n409), .Y(buffer[3]) );
  AND2X1 U390 ( .A(n408), .B(n407), .Y(buffer[2]) );
  AND2X1 U391 ( .A(n406), .B(n405), .Y(buffer[1]) );
  AND2X1 U392 ( .A(n404), .B(n403), .Y(buffer[0]) );
endmodule

