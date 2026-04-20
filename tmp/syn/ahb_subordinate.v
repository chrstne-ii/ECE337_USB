/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Mon Apr 20 13:05:37 2026
/////////////////////////////////////////////////////////////


module hready_read_fsm ( clk, n_rst, hresp, hwrite, hsel, hready, haddr, hsize, 
        rx_data, hrready, get_rx_data, hr_avail, buffer );
  input [3:0] haddr;
  input [1:0] hsize;
  input [7:0] rx_data;
  output [31:0] buffer;
  input clk, n_rst, hresp, hwrite, hsel, hready;
  output hrready, get_rx_data, hr_avail;
  wire   n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160;
  wire   [4:0] state;
  wire   [4:0] next_state;

  DFFSR \state_reg[0]  ( .D(next_state[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[0]) );
  DFFSR \state_reg[4]  ( .D(next_state[4]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[4]) );
  DFFSR \state_reg[2]  ( .D(next_state[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[2]) );
  DFFSR \state_reg[1]  ( .D(next_state[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[1]) );
  DFFSR \state_reg[3]  ( .D(next_state[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[3]) );
  DFFSR \buffer_reg[15]  ( .D(n187), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[15]) );
  DFFSR \buffer_reg[14]  ( .D(n188), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[14]) );
  DFFSR \buffer_reg[13]  ( .D(n189), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[13]) );
  DFFSR \buffer_reg[12]  ( .D(n190), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[12]) );
  DFFSR \buffer_reg[11]  ( .D(n191), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[11]) );
  DFFSR \buffer_reg[10]  ( .D(n192), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[10]) );
  DFFSR \buffer_reg[9]  ( .D(n193), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[9]) );
  DFFSR \buffer_reg[8]  ( .D(n194), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[8]) );
  DFFSR \buffer_reg[6]  ( .D(n186), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[6]) );
  DFFSR \buffer_reg[0]  ( .D(n185), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[0]) );
  DFFSR \buffer_reg[1]  ( .D(n184), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[1]) );
  DFFSR \buffer_reg[2]  ( .D(n183), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[2]) );
  DFFSR \buffer_reg[3]  ( .D(n182), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[3]) );
  DFFSR \buffer_reg[4]  ( .D(n181), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[4]) );
  DFFSR \buffer_reg[5]  ( .D(n180), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[5]) );
  DFFSR \buffer_reg[7]  ( .D(n179), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[7]) );
  DFFSR \buffer_reg[23]  ( .D(n195), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[23]) );
  DFFSR \buffer_reg[22]  ( .D(n196), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[22]) );
  DFFSR \buffer_reg[21]  ( .D(n197), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[21]) );
  DFFSR \buffer_reg[20]  ( .D(n198), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[20]) );
  DFFSR \buffer_reg[19]  ( .D(n199), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[19]) );
  DFFSR \buffer_reg[18]  ( .D(n200), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[18]) );
  DFFSR \buffer_reg[17]  ( .D(n201), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[17]) );
  DFFSR \buffer_reg[16]  ( .D(n202), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[16]) );
  DFFSR \buffer_reg[31]  ( .D(n203), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[31]) );
  DFFSR \buffer_reg[29]  ( .D(n204), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[29]) );
  DFFSR \buffer_reg[28]  ( .D(n205), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[28]) );
  DFFSR \buffer_reg[27]  ( .D(n206), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[27]) );
  DFFSR \buffer_reg[26]  ( .D(n207), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[26]) );
  DFFSR \buffer_reg[25]  ( .D(n208), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[25]) );
  DFFSR \buffer_reg[24]  ( .D(n209), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[24]) );
  DFFSR \buffer_reg[30]  ( .D(n210), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        buffer[30]) );
  OR2X1 U40 ( .A(n38), .B(n39), .Y(next_state[4]) );
  OAI22X1 U41 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n39) );
  OAI21X1 U42 ( .A(n44), .B(n45), .C(n46), .Y(n38) );
  AND2X1 U43 ( .A(n47), .B(n48), .Y(n46) );
  NAND3X1 U44 ( .A(n49), .B(n50), .C(n51), .Y(next_state[3]) );
  NOR2X1 U45 ( .A(n52), .B(n53), .Y(n51) );
  OAI21X1 U46 ( .A(n54), .B(n55), .C(n56), .Y(n53) );
  NAND2X1 U47 ( .A(state[4]), .B(n57), .Y(n55) );
  OAI22X1 U48 ( .A(n58), .B(n48), .C(n40), .D(n59), .Y(n52) );
  NOR2X1 U49 ( .A(n60), .B(n61), .Y(n50) );
  AOI21X1 U50 ( .A(n62), .B(n63), .C(n64), .Y(n49) );
  OR2X1 U51 ( .A(n65), .B(n66), .Y(next_state[2]) );
  OAI21X1 U52 ( .A(n67), .B(n48), .C(n56), .Y(n66) );
  INVX1 U53 ( .A(n68), .Y(n56) );
  OAI22X1 U54 ( .A(n69), .B(n42), .C(n70), .D(n71), .Y(n68) );
  OAI21X1 U55 ( .A(n69), .B(n72), .C(n73), .Y(n65) );
  INVX1 U56 ( .A(n74), .Y(n73) );
  OAI21X1 U57 ( .A(n75), .B(n70), .C(n76), .Y(n74) );
  NOR2X1 U58 ( .A(n77), .B(n62), .Y(n70) );
  AOI21X1 U59 ( .A(n67), .B(state[0]), .C(n77), .Y(n69) );
  NAND3X1 U60 ( .A(n78), .B(n79), .C(n80), .Y(next_state[1]) );
  AOI22X1 U61 ( .A(n77), .B(n81), .C(n82), .D(state[1]), .Y(n80) );
  INVX1 U62 ( .A(n83), .Y(n79) );
  NAND2X1 U63 ( .A(n84), .B(n85), .Y(next_state[0]) );
  AOI22X1 U64 ( .A(n82), .B(state[0]), .C(n86), .D(n87), .Y(n84) );
  INVX1 U65 ( .A(n48), .Y(n82) );
  OAI21X1 U66 ( .A(n88), .B(n89), .C(n90), .Y(n210) );
  NAND2X1 U67 ( .A(buffer[30]), .B(n85), .Y(n90) );
  OAI21X1 U68 ( .A(n88), .B(n91), .C(n92), .Y(n209) );
  NAND2X1 U69 ( .A(buffer[24]), .B(n85), .Y(n92) );
  OAI21X1 U70 ( .A(n88), .B(n93), .C(n94), .Y(n208) );
  NAND2X1 U71 ( .A(buffer[25]), .B(n85), .Y(n94) );
  OAI21X1 U72 ( .A(n88), .B(n95), .C(n96), .Y(n207) );
  NAND2X1 U73 ( .A(buffer[26]), .B(n85), .Y(n96) );
  OAI21X1 U74 ( .A(n88), .B(n97), .C(n98), .Y(n206) );
  NAND2X1 U75 ( .A(buffer[27]), .B(n85), .Y(n98) );
  OAI21X1 U76 ( .A(n88), .B(n99), .C(n100), .Y(n205) );
  NAND2X1 U77 ( .A(buffer[28]), .B(n85), .Y(n100) );
  OAI21X1 U78 ( .A(n88), .B(n101), .C(n102), .Y(n204) );
  NAND2X1 U79 ( .A(buffer[29]), .B(n85), .Y(n102) );
  OAI21X1 U80 ( .A(n88), .B(n103), .C(n104), .Y(n203) );
  NAND2X1 U81 ( .A(buffer[31]), .B(n85), .Y(n104) );
  OAI21X1 U82 ( .A(n105), .B(n91), .C(n106), .Y(n202) );
  NAND2X1 U83 ( .A(buffer[16]), .B(n107), .Y(n106) );
  OAI21X1 U84 ( .A(n105), .B(n93), .C(n108), .Y(n201) );
  NAND2X1 U85 ( .A(buffer[17]), .B(n107), .Y(n108) );
  OAI21X1 U86 ( .A(n105), .B(n95), .C(n109), .Y(n200) );
  NAND2X1 U87 ( .A(buffer[18]), .B(n107), .Y(n109) );
  OAI21X1 U88 ( .A(n105), .B(n97), .C(n110), .Y(n199) );
  NAND2X1 U89 ( .A(buffer[19]), .B(n107), .Y(n110) );
  OAI21X1 U90 ( .A(n105), .B(n99), .C(n111), .Y(n198) );
  NAND2X1 U91 ( .A(buffer[20]), .B(n107), .Y(n111) );
  OAI21X1 U92 ( .A(n105), .B(n101), .C(n112), .Y(n197) );
  NAND2X1 U93 ( .A(buffer[21]), .B(n107), .Y(n112) );
  OAI21X1 U94 ( .A(n105), .B(n89), .C(n113), .Y(n196) );
  NAND2X1 U95 ( .A(buffer[22]), .B(n107), .Y(n113) );
  OAI21X1 U96 ( .A(n105), .B(n103), .C(n114), .Y(n195) );
  NAND2X1 U97 ( .A(buffer[23]), .B(n107), .Y(n114) );
  OAI21X1 U98 ( .A(n91), .B(n115), .C(n116), .Y(n194) );
  NAND2X1 U99 ( .A(buffer[8]), .B(n117), .Y(n116) );
  OAI21X1 U100 ( .A(n93), .B(n115), .C(n118), .Y(n193) );
  NAND2X1 U101 ( .A(buffer[9]), .B(n117), .Y(n118) );
  OAI21X1 U102 ( .A(n95), .B(n115), .C(n119), .Y(n192) );
  NAND2X1 U103 ( .A(buffer[10]), .B(n117), .Y(n119) );
  OAI21X1 U104 ( .A(n97), .B(n115), .C(n120), .Y(n191) );
  NAND2X1 U105 ( .A(buffer[11]), .B(n117), .Y(n120) );
  OAI21X1 U106 ( .A(n99), .B(n115), .C(n121), .Y(n190) );
  NAND2X1 U107 ( .A(buffer[12]), .B(n117), .Y(n121) );
  OAI21X1 U108 ( .A(n101), .B(n115), .C(n122), .Y(n189) );
  NAND2X1 U109 ( .A(buffer[13]), .B(n117), .Y(n122) );
  OAI21X1 U110 ( .A(n89), .B(n115), .C(n123), .Y(n188) );
  NAND2X1 U111 ( .A(buffer[14]), .B(n117), .Y(n123) );
  OAI21X1 U112 ( .A(n103), .B(n115), .C(n124), .Y(n187) );
  NAND2X1 U113 ( .A(buffer[15]), .B(n117), .Y(n124) );
  MUX2X1 U114 ( .B(n89), .A(n125), .S(n126), .Y(n186) );
  INVX1 U115 ( .A(buffer[6]), .Y(n125) );
  INVX1 U116 ( .A(rx_data[6]), .Y(n89) );
  MUX2X1 U117 ( .B(n91), .A(n127), .S(n126), .Y(n185) );
  INVX1 U118 ( .A(buffer[0]), .Y(n127) );
  INVX1 U119 ( .A(rx_data[0]), .Y(n91) );
  MUX2X1 U120 ( .B(n93), .A(n128), .S(n126), .Y(n184) );
  INVX1 U121 ( .A(buffer[1]), .Y(n128) );
  INVX1 U122 ( .A(rx_data[1]), .Y(n93) );
  MUX2X1 U123 ( .B(n95), .A(n129), .S(n126), .Y(n183) );
  INVX1 U124 ( .A(buffer[2]), .Y(n129) );
  INVX1 U125 ( .A(rx_data[2]), .Y(n95) );
  MUX2X1 U126 ( .B(n97), .A(n130), .S(n126), .Y(n182) );
  INVX1 U127 ( .A(buffer[3]), .Y(n130) );
  INVX1 U128 ( .A(rx_data[3]), .Y(n97) );
  MUX2X1 U129 ( .B(n99), .A(n131), .S(n126), .Y(n181) );
  INVX1 U130 ( .A(buffer[4]), .Y(n131) );
  INVX1 U131 ( .A(rx_data[4]), .Y(n99) );
  MUX2X1 U132 ( .B(n101), .A(n132), .S(n126), .Y(n180) );
  INVX1 U133 ( .A(buffer[5]), .Y(n132) );
  INVX1 U134 ( .A(rx_data[5]), .Y(n101) );
  MUX2X1 U135 ( .B(n103), .A(n133), .S(n126), .Y(n179) );
  INVX1 U136 ( .A(buffer[7]), .Y(n133) );
  INVX1 U137 ( .A(rx_data[7]), .Y(n103) );
  NAND3X1 U138 ( .A(n48), .B(n134), .C(n135), .Y(hrready) );
  NOR2X1 U139 ( .A(hr_avail), .B(n87), .Y(n135) );
  NAND3X1 U140 ( .A(n85), .B(n136), .C(n137), .Y(n48) );
  NOR2X1 U141 ( .A(n138), .B(n139), .Y(n137) );
  AND2X1 U142 ( .A(n107), .B(n88), .Y(n85) );
  INVX1 U143 ( .A(n60), .Y(n88) );
  NOR2X1 U144 ( .A(n71), .B(n140), .Y(n60) );
  AND2X1 U145 ( .A(n105), .B(n117), .Y(n107) );
  AND2X1 U146 ( .A(n126), .B(n115), .Y(n117) );
  NAND2X1 U147 ( .A(n77), .B(n141), .Y(n115) );
  OAI21X1 U148 ( .A(state[3]), .B(state[1]), .C(n42), .Y(n141) );
  NOR2X1 U149 ( .A(n83), .B(n142), .Y(n126) );
  OAI21X1 U150 ( .A(n54), .B(n71), .C(n134), .Y(n142) );
  OAI21X1 U151 ( .A(n72), .B(n140), .C(n47), .Y(n83) );
  NAND3X1 U152 ( .A(n143), .B(n45), .C(state[1]), .Y(n47) );
  AOI21X1 U153 ( .A(n63), .B(n77), .C(n61), .Y(n105) );
  INVX1 U154 ( .A(n144), .Y(n61) );
  NAND3X1 U155 ( .A(n45), .B(n57), .C(n143), .Y(n144) );
  INVX1 U156 ( .A(n54), .Y(n77) );
  NAND2X1 U157 ( .A(state[2]), .B(n45), .Y(n54) );
  INVX1 U158 ( .A(n72), .Y(n63) );
  INVX1 U159 ( .A(n145), .Y(hr_avail) );
  NAND3X1 U160 ( .A(n138), .B(n67), .C(state[0]), .Y(n145) );
  NAND3X1 U161 ( .A(n136), .B(n134), .C(n78), .Y(get_rx_data) );
  INVX1 U162 ( .A(n146), .Y(n78) );
  OAI21X1 U163 ( .A(n40), .B(n59), .C(n147), .Y(n146) );
  AOI22X1 U164 ( .A(n62), .B(n138), .C(state[0]), .D(n139), .Y(n147) );
  OAI21X1 U165 ( .A(state[1]), .B(n44), .C(n75), .Y(n139) );
  INVX1 U166 ( .A(n71), .Y(n138) );
  NAND3X1 U167 ( .A(n57), .B(n148), .C(state[3]), .Y(n71) );
  INVX1 U168 ( .A(n43), .Y(n62) );
  NAND2X1 U169 ( .A(state[0]), .B(state[2]), .Y(n43) );
  OR2X1 U170 ( .A(n149), .B(n150), .Y(n59) );
  OAI21X1 U171 ( .A(haddr[1]), .B(n151), .C(n41), .Y(n150) );
  INVX1 U172 ( .A(n86), .Y(n41) );
  NOR2X1 U173 ( .A(n149), .B(n152), .Y(n86) );
  INVX1 U174 ( .A(n153), .Y(n152) );
  OAI21X1 U175 ( .A(haddr[0]), .B(n154), .C(n155), .Y(n153) );
  NAND2X1 U176 ( .A(hsize[0]), .B(n151), .Y(n155) );
  INVX1 U177 ( .A(haddr[1]), .Y(n154) );
  INVX1 U178 ( .A(hsize[1]), .Y(n151) );
  NAND3X1 U179 ( .A(n156), .B(hsel), .C(n157), .Y(n149) );
  NOR2X1 U180 ( .A(haddr[3]), .B(n158), .Y(n157) );
  OR2X1 U181 ( .A(hwrite), .B(hresp), .Y(n158) );
  NOR2X1 U182 ( .A(haddr[2]), .B(n159), .Y(n156) );
  INVX1 U183 ( .A(hready), .Y(n159) );
  INVX1 U184 ( .A(n87), .Y(n40) );
  NOR2X1 U185 ( .A(n75), .B(n140), .Y(n87) );
  NAND3X1 U186 ( .A(n58), .B(n148), .C(n57), .Y(n75) );
  INVX1 U187 ( .A(state[1]), .Y(n57) );
  INVX1 U188 ( .A(n64), .Y(n134) );
  NOR2X1 U189 ( .A(n42), .B(n140), .Y(n64) );
  NAND2X1 U190 ( .A(n67), .B(n45), .Y(n140) );
  INVX1 U191 ( .A(state[0]), .Y(n45) );
  AOI21X1 U192 ( .A(n81), .B(state[0]), .C(n160), .Y(n136) );
  INVX1 U193 ( .A(n76), .Y(n160) );
  NAND3X1 U194 ( .A(state[1]), .B(n143), .C(state[0]), .Y(n76) );
  INVX1 U195 ( .A(n44), .Y(n143) );
  NAND3X1 U196 ( .A(n67), .B(n58), .C(state[4]), .Y(n44) );
  INVX1 U197 ( .A(state[2]), .Y(n67) );
  NAND2X1 U198 ( .A(n42), .B(n72), .Y(n81) );
  NAND3X1 U199 ( .A(n58), .B(n148), .C(state[1]), .Y(n72) );
  INVX1 U200 ( .A(state[3]), .Y(n58) );
  NAND3X1 U201 ( .A(state[1]), .B(n148), .C(state[3]), .Y(n42) );
  INVX1 U202 ( .A(state[4]), .Y(n148) );
endmodule


module hready_write_fsm ( clk, n_rst, hresp, hsel, hwrite, hready, haddr, 
        hsize, hwdata, hwready, store_tx_data, tx_data );
  input [3:0] haddr;
  input [1:0] hsize;
  input [31:0] hwdata;
  output [7:0] tx_data;
  input clk, n_rst, hresp, hsel, hwrite, hready;
  output hwready, store_tx_data;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101;
  wire   [4:0] state;
  wire   [3:0] next_state;

  DFFSR \state_reg[0]  ( .D(next_state[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[0]) );
  DFFSR \state_reg[1]  ( .D(n92), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[1])
         );
  DFFSR \state_reg[2]  ( .D(next_state[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(state[2]) );
  DFFSR \state_reg[3]  ( .D(n93), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[3])
         );
  DFFSR \tx_data_reg[0]  ( .D(n94), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[0]) );
  DFFSR \tx_data_reg[1]  ( .D(n95), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[1]) );
  DFFSR \tx_data_reg[2]  ( .D(n96), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[2]) );
  DFFSR \tx_data_reg[3]  ( .D(n97), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[3]) );
  DFFSR \tx_data_reg[4]  ( .D(n98), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[4]) );
  DFFSR \tx_data_reg[5]  ( .D(n99), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[5]) );
  DFFSR \tx_data_reg[6]  ( .D(n100), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[6]) );
  DFFSR \tx_data_reg[7]  ( .D(n101), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        tx_data[7]) );
  NAND2X1 U15 ( .A(n13), .B(n14), .Y(store_tx_data) );
  OAI21X1 U16 ( .A(state[3]), .B(state[1]), .C(n15), .Y(n14) );
  NAND2X1 U17 ( .A(n16), .B(n17), .Y(next_state[2]) );
  INVX1 U18 ( .A(n18), .Y(n16) );
  NAND3X1 U19 ( .A(n19), .B(n13), .C(n20), .Y(next_state[0]) );
  AOI21X1 U20 ( .A(n21), .B(n22), .C(n23), .Y(n20) );
  NOR2X1 U21 ( .A(haddr[0]), .B(n24), .Y(n22) );
  OR2X1 U22 ( .A(hsize[0]), .B(haddr[1]), .Y(n24) );
  NOR2X1 U23 ( .A(n25), .B(n26), .Y(n21) );
  NAND3X1 U24 ( .A(n27), .B(n28), .C(n29), .Y(n92) );
  AOI21X1 U25 ( .A(hsize[0]), .B(n30), .C(n31), .Y(n29) );
  OAI21X1 U26 ( .A(n32), .B(n33), .C(n34), .Y(n31) );
  NAND2X1 U27 ( .A(state[1]), .B(n35), .Y(n33) );
  AND2X1 U28 ( .A(n36), .B(n37), .Y(n28) );
  NOR2X1 U29 ( .A(n38), .B(n23), .Y(n27) );
  INVX1 U30 ( .A(n39), .Y(n23) );
  OR2X1 U31 ( .A(n40), .B(n41), .Y(n93) );
  OAI21X1 U32 ( .A(n32), .B(n42), .C(n43), .Y(n41) );
  INVX1 U33 ( .A(n44), .Y(n43) );
  NAND2X1 U34 ( .A(state[3]), .B(n45), .Y(n42) );
  NAND3X1 U35 ( .A(n17), .B(n19), .C(n37), .Y(n40) );
  INVX1 U36 ( .A(n30), .Y(n19) );
  NOR2X1 U37 ( .A(n46), .B(n26), .Y(n30) );
  NAND3X1 U38 ( .A(n15), .B(n45), .C(n47), .Y(n26) );
  OR2X1 U39 ( .A(hsize[1]), .B(n25), .Y(n46) );
  NAND3X1 U40 ( .A(n48), .B(hwrite), .C(n49), .Y(n25) );
  NOR2X1 U41 ( .A(haddr[2]), .B(n50), .Y(n49) );
  OR2X1 U42 ( .A(hresp), .B(haddr[3]), .Y(n50) );
  AND2X1 U43 ( .A(hsel), .B(hready), .Y(n48) );
  NAND3X1 U44 ( .A(n51), .B(n52), .C(n53), .Y(n94) );
  AOI22X1 U45 ( .A(hwdata[8]), .B(n38), .C(hwdata[16]), .D(n54), .Y(n53) );
  NAND2X1 U46 ( .A(hwdata[24]), .B(n55), .Y(n52) );
  AOI22X1 U47 ( .A(tx_data[0]), .B(n56), .C(hwdata[0]), .D(n44), .Y(n51) );
  NAND3X1 U48 ( .A(n57), .B(n58), .C(n59), .Y(n95) );
  AOI22X1 U49 ( .A(hwdata[9]), .B(n38), .C(hwdata[17]), .D(n54), .Y(n59) );
  NAND2X1 U50 ( .A(hwdata[25]), .B(n55), .Y(n58) );
  AOI22X1 U51 ( .A(tx_data[1]), .B(n56), .C(hwdata[1]), .D(n44), .Y(n57) );
  NAND3X1 U52 ( .A(n60), .B(n61), .C(n62), .Y(n96) );
  AOI22X1 U53 ( .A(hwdata[10]), .B(n38), .C(hwdata[18]), .D(n54), .Y(n62) );
  NAND2X1 U54 ( .A(hwdata[26]), .B(n55), .Y(n61) );
  AOI22X1 U55 ( .A(tx_data[2]), .B(n56), .C(hwdata[2]), .D(n44), .Y(n60) );
  NAND3X1 U56 ( .A(n63), .B(n64), .C(n65), .Y(n97) );
  AOI22X1 U57 ( .A(hwdata[11]), .B(n38), .C(hwdata[19]), .D(n54), .Y(n65) );
  NAND2X1 U58 ( .A(hwdata[27]), .B(n55), .Y(n64) );
  AOI22X1 U59 ( .A(tx_data[3]), .B(n56), .C(hwdata[3]), .D(n44), .Y(n63) );
  NAND3X1 U60 ( .A(n66), .B(n67), .C(n68), .Y(n98) );
  AOI22X1 U61 ( .A(hwdata[12]), .B(n38), .C(hwdata[20]), .D(n54), .Y(n68) );
  NAND2X1 U62 ( .A(hwdata[28]), .B(n55), .Y(n67) );
  AOI22X1 U63 ( .A(tx_data[4]), .B(n56), .C(hwdata[4]), .D(n44), .Y(n66) );
  NAND3X1 U64 ( .A(n69), .B(n70), .C(n71), .Y(n99) );
  AOI22X1 U65 ( .A(hwdata[13]), .B(n38), .C(hwdata[21]), .D(n54), .Y(n71) );
  NAND2X1 U66 ( .A(hwdata[29]), .B(n55), .Y(n70) );
  AOI22X1 U67 ( .A(tx_data[5]), .B(n56), .C(hwdata[5]), .D(n44), .Y(n69) );
  NAND3X1 U68 ( .A(n72), .B(n73), .C(n74), .Y(n100) );
  AOI22X1 U69 ( .A(hwdata[14]), .B(n38), .C(hwdata[22]), .D(n54), .Y(n74) );
  NAND2X1 U70 ( .A(hwdata[30]), .B(n55), .Y(n73) );
  AOI22X1 U71 ( .A(tx_data[6]), .B(n56), .C(hwdata[6]), .D(n44), .Y(n72) );
  NAND3X1 U72 ( .A(n75), .B(n76), .C(n77), .Y(n101) );
  AOI22X1 U73 ( .A(hwdata[15]), .B(n38), .C(hwdata[23]), .D(n54), .Y(n77) );
  NAND2X1 U74 ( .A(hwdata[31]), .B(n55), .Y(n76) );
  AOI22X1 U75 ( .A(tx_data[7]), .B(n56), .C(hwdata[7]), .D(n44), .Y(n75) );
  INVX1 U76 ( .A(n78), .Y(n56) );
  NAND3X1 U77 ( .A(n79), .B(n80), .C(n81), .Y(n78) );
  NOR2X1 U78 ( .A(n44), .B(n55), .Y(n81) );
  OAI21X1 U79 ( .A(n45), .B(n82), .C(n34), .Y(n44) );
  OR2X1 U80 ( .A(n83), .B(state[2]), .Y(n34) );
  NOR2X1 U81 ( .A(n84), .B(n85), .Y(hwready) );
  OR2X1 U82 ( .A(n55), .B(n18), .Y(n85) );
  NAND3X1 U83 ( .A(n80), .B(n13), .C(n79), .Y(n18) );
  INVX1 U84 ( .A(n54), .Y(n79) );
  OAI21X1 U85 ( .A(n86), .B(n87), .C(n37), .Y(n54) );
  OR2X1 U86 ( .A(n83), .B(n88), .Y(n37) );
  NAND3X1 U87 ( .A(state[3]), .B(n45), .C(state[0]), .Y(n83) );
  NAND2X1 U88 ( .A(state[0]), .B(state[1]), .Y(n87) );
  OR2X1 U89 ( .A(n32), .B(n89), .Y(n13) );
  NAND2X1 U90 ( .A(state[2]), .B(n15), .Y(n32) );
  INVX1 U91 ( .A(n38), .Y(n80) );
  NOR2X1 U92 ( .A(n82), .B(state[1]), .Y(n38) );
  NAND2X1 U93 ( .A(n17), .B(n36), .Y(n55) );
  NAND3X1 U94 ( .A(state[0]), .B(n45), .C(n47), .Y(n36) );
  NAND3X1 U95 ( .A(n89), .B(n88), .C(state[0]), .Y(n17) );
  NOR2X1 U96 ( .A(n35), .B(n45), .Y(n89) );
  OAI21X1 U97 ( .A(n35), .B(n90), .C(n91), .Y(n84) );
  AND2X1 U98 ( .A(n82), .B(n39), .Y(n91) );
  NAND3X1 U99 ( .A(state[1]), .B(n15), .C(n47), .Y(n39) );
  INVX1 U100 ( .A(n86), .Y(n47) );
  NAND2X1 U101 ( .A(n88), .B(n35), .Y(n86) );
  INVX1 U102 ( .A(state[2]), .Y(n88) );
  NAND3X1 U103 ( .A(state[2]), .B(n35), .C(state[0]), .Y(n82) );
  OAI21X1 U104 ( .A(state[2]), .B(n45), .C(n15), .Y(n90) );
  INVX1 U105 ( .A(state[0]), .Y(n15) );
  INVX1 U106 ( .A(state[1]), .Y(n45) );
  INVX1 U107 ( .A(state[3]), .Y(n35) );
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
  output [3:0] tx_packet;
  output [7:0] tx_data;
  output [31:0] hrdata;
  input clk, n_rst, hsel, hwrite, rx_transfer_active, rx_data_ready, rx_error,
         tx_transfer_active, tx_error;
  output d_mode, hresp, hready, get_rx_data, store_tx_data, clear;
  wire   hr_avail, hrready, hwready, hresp_high, prev_hresp, prev_hresp_high,
         prev_hwrite, prev_clear, N420, N421, N422, N423, N424, N425, N426,
         N427, N428, N429, N430, N431, N432, N433, N450, N451, N452, N453,
         N454, N455, N456, N457, N458, N459, N460, N461, N462, N463, N464,
         N465, N466, N467, N472, N473, N488, N489, N490, N491, N492, N493,
         N494, N495, N496, N497, N498, N499, N500, N501, N502, N503, N504,
         N505, N506, N507, N508, N509, N510, N511, N513, N514, N516, N519,
         N520, N521, N522, N523, N524, N525, N526, N527, N528, N529, N530,
         N531, N532, N533, N534, N535, N536, N537, N538, N539, N540, N541,
         N542, N543, N544, N545, N546, N547, N548, N549, N550, N555, N556,
         N557, N558, N559, N560, N561, N562, N563, N564, N565, N566, N567,
         N568, N569, N570, N571, N572, N573, N574, N575, N576, N577, N578,
         N579, N580, N581, N582, N583, N584, N585, N586, N587, N588, N589,
         N590, N591, N592, N593, N594, N595, N596, N597, N598, N599, N600,
         N601, N602, N603, N604, N605, N606, N607, N608, N609, N610, N611,
         N612, N613, N614, N615, N616, N617, N618, N619, N620, N621, N622,
         N623, N624, N625, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712,
         n713, n714, n715, n716, n717, n718, n719, n720, n721, n722, n723,
         n724, n725, n726, n727, n728, n729, n730, n731, n732, n733, n734,
         n735, n736, n737, n738, n739, n740, n741, n742, n743, n744, n745,
         n746, n747, n748, n749, n750, n751, n752, n753, n754, n755, n756,
         n757, n758, n759, n760, n761, n762, n763, n764, n765, n766, n767,
         n768, n769, n770, n771, n772, n773, n774, n775, n776, n777, n778,
         n779, n780, n781, n782, n783, n784, n785, n786, n787, n788, n789,
         n790, n791, n792, n793, n794, n795, n796, n797, n798, n799, n800,
         n801, n802, n803, n804, n805, n806, n807, n808, n809, n810, n811,
         n812, n813, n814, n815, n816, n817, n818, n819, n820, n821, n822,
         n823, n824, n825, n826, n827, n828, n829, n830, n831, n832, n833,
         n834, n835, n836, n837, n838, n839, n840, n841, n842, n843, n844,
         n845, n846, n847, n848, n849, n850, n851, n852, n853, n854, n855,
         n856, n857, n858, n859, n860, n861, n862, n863, n864, n865, n866,
         n867, n868, n869, n870, n871, n872, n873, n874, n875, n876, n877,
         n878, n879, n880, n881, n882, n883, n884, n885, n886, n887, n888,
         n889, n890, n891, n892, n893, n894, n895, n896, n897, n898, n899,
         n900, n901, n902, n903, n904, n905, n906, n907, n908, n909, n910,
         n911, n912, n913, n914, n915, n916, n917, n918, n919, n920, n921,
         n922, n923, n924, n925, n926, n927, n928, n929, n930, n931, n932,
         n933, n934, n935, n936, n937, n938, n939, n940, n941, n942, n943,
         n944, n945, n946, n947, n948, n949, n950, n951, n952, n953, n954,
         n955, n956, n957, n958, n959, n960, n961, n962, n963, n964, n965,
         n966, n967, n968, n969, n970, n971, n972, n973, n974, n975, n976,
         n977, n978, n979, n980, n981, n982, n983, n984, n985, n986, n987,
         n988, n989, n990, n991, n992, n993, n994, n995, n996, n997, n998,
         n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008,
         n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018,
         n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028,
         n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038,
         n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048,
         n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058,
         n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068,
         n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078,
         n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088,
         n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098,
         n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108,
         n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118,
         n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128,
         n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138,
         n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148,
         n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158,
         n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168,
         n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178,
         n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188,
         n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1200,
         n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210,
         n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218;
  wire   [31:0] buffer;
  wire   [7:0] register;
  wire   [1:0] prev_hsize;
  wire   [3:0] prev_haddr;
  wire   [31:0] next_hrdata;
  wire   [7:0] regD;
  wire   [7:0] regC;

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
  DFFSR prev_hresp_reg ( .D(hresp), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        prev_hresp) );
  DFFSR \register_reg[0]  ( .D(buffer[0]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        register[0]) );
  DFFSR \register_reg[1]  ( .D(buffer[1]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        register[1]) );
  DFFSR \register_reg[2]  ( .D(buffer[2]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        register[2]) );
  DFFSR \register_reg[3]  ( .D(buffer[3]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        register[3]) );
  DFFSR \register_reg[4]  ( .D(buffer[4]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        register[4]) );
  DFFSR \register_reg[5]  ( .D(buffer[5]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        register[5]) );
  DFFSR \register_reg[6]  ( .D(buffer[6]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        register[6]) );
  DFFSR \register_reg[7]  ( .D(buffer[7]), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        register[7]) );
  DFFSR prev_hwrite_reg ( .D(hwrite), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        prev_hwrite) );
  DFFSR \hrdata_reg[31]  ( .D(next_hrdata[31]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[31]) );
  DFFSR \hrdata_reg[30]  ( .D(next_hrdata[30]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[30]) );
  DFFSR \hrdata_reg[29]  ( .D(next_hrdata[29]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[29]) );
  DFFSR \hrdata_reg[28]  ( .D(next_hrdata[28]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[28]) );
  DFFSR \hrdata_reg[27]  ( .D(next_hrdata[27]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[27]) );
  DFFSR \hrdata_reg[26]  ( .D(next_hrdata[26]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[26]) );
  DFFSR \hrdata_reg[25]  ( .D(next_hrdata[25]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[25]) );
  DFFSR \hrdata_reg[24]  ( .D(next_hrdata[24]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[24]) );
  DFFSR \hrdata_reg[23]  ( .D(next_hrdata[23]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[23]) );
  DFFSR \hrdata_reg[22]  ( .D(next_hrdata[22]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[22]) );
  DFFSR \hrdata_reg[21]  ( .D(next_hrdata[21]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[21]) );
  DFFSR \hrdata_reg[20]  ( .D(next_hrdata[20]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[20]) );
  DFFSR \hrdata_reg[19]  ( .D(next_hrdata[19]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[19]) );
  DFFSR \hrdata_reg[18]  ( .D(next_hrdata[18]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[18]) );
  DFFSR \hrdata_reg[17]  ( .D(next_hrdata[17]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[17]) );
  DFFSR \hrdata_reg[16]  ( .D(next_hrdata[16]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[16]) );
  DFFSR prev_clear_reg ( .D(clear), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        prev_clear) );
  DFFSR \hrdata_reg[0]  ( .D(next_hrdata[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[0]) );
  DFFSR \hrdata_reg[8]  ( .D(next_hrdata[8]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[8]) );
  DFFSR \hrdata_reg[15]  ( .D(next_hrdata[15]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[15]) );
  DFFSR \hrdata_reg[7]  ( .D(next_hrdata[7]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[7]) );
  DFFSR \hrdata_reg[14]  ( .D(next_hrdata[14]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[14]) );
  DFFSR \hrdata_reg[6]  ( .D(next_hrdata[6]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[6]) );
  DFFSR \hrdata_reg[13]  ( .D(next_hrdata[13]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[13]) );
  DFFSR \hrdata_reg[5]  ( .D(next_hrdata[5]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[5]) );
  DFFSR \hrdata_reg[12]  ( .D(next_hrdata[12]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[12]) );
  DFFSR \hrdata_reg[4]  ( .D(next_hrdata[4]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[4]) );
  DFFSR \hrdata_reg[11]  ( .D(next_hrdata[11]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[11]) );
  DFFSR \hrdata_reg[3]  ( .D(next_hrdata[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[3]) );
  DFFSR \hrdata_reg[10]  ( .D(next_hrdata[10]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[10]) );
  DFFSR \hrdata_reg[2]  ( .D(next_hrdata[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[2]) );
  DFFSR \hrdata_reg[9]  ( .D(next_hrdata[9]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[9]) );
  DFFSR \hrdata_reg[1]  ( .D(next_hrdata[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(hrdata[1]) );
  hready_read_fsm read_fsm ( .clk(clk), .n_rst(n_rst), .hresp(hresp), .hwrite(
        hwrite), .hsel(hsel), .hready(hready), .haddr(haddr), .hsize(hsize), 
        .rx_data(rx_data), .hrready(hrready), .get_rx_data(get_rx_data), 
        .hr_avail(hr_avail), .buffer(buffer) );
  hready_write_fsm write_fsm ( .clk(clk), .n_rst(n_rst), .hresp(hresp), .hsel(
        hsel), .hwrite(hwrite), .hready(hready), .haddr(haddr), .hsize(hsize), 
        .hwdata(hwdata), .hwready(hwready), .store_tx_data(store_tx_data), 
        .tx_data(tx_data) );
  AND2X2 U682 ( .A(hsize[0]), .B(n1012), .Y(n562) );
  NAND2X1 U683 ( .A(n931), .B(tx_error), .Y(n563) );
  INVX2 U684 ( .A(n562), .Y(n564) );
  INVX4 U685 ( .A(hsize[1]), .Y(n1012) );
  OAI21X1 U686 ( .A(n592), .B(n948), .C(n665), .Y(n565) );
  INVX2 U687 ( .A(n1134), .Y(n566) );
  AND2X2 U688 ( .A(n591), .B(n779), .Y(n767) );
  INVX2 U689 ( .A(n833), .Y(n567) );
  INVX2 U690 ( .A(n859), .Y(n833) );
  AND2X2 U691 ( .A(haddr[2]), .B(n590), .Y(n765) );
  NAND2X1 U692 ( .A(n775), .B(n591), .Y(n764) );
  INVX4 U693 ( .A(n764), .Y(n568) );
  OAI21X1 U694 ( .A(n912), .B(n913), .C(n914), .Y(n569) );
  INVX2 U695 ( .A(n1113), .Y(n570) );
  NAND2X1 U696 ( .A(n590), .B(n777), .Y(n763) );
  INVX4 U697 ( .A(n763), .Y(n571) );
  BUFX2 U698 ( .A(n766), .Y(n572) );
  BUFX2 U699 ( .A(n832), .Y(n573) );
  INVX4 U700 ( .A(n1118), .Y(n574) );
  AOI21X1 U701 ( .A(n777), .B(haddr[0]), .C(haddr[1]), .Y(n592) );
  NOR2X1 U702 ( .A(n592), .B(n948), .Y(n575) );
  NAND3X1 U703 ( .A(n774), .B(n773), .C(haddr[3]), .Y(n673) );
  NOR2X1 U704 ( .A(n673), .B(haddr[2]), .Y(n630) );
  AOI22X1 U705 ( .A(n575), .B(hrdata[0]), .C(buffer_occ[0]), .D(n630), .Y(n586) );
  NAND2X1 U706 ( .A(haddr[2]), .B(n774), .Y(n661) );
  NAND2X1 U707 ( .A(n775), .B(n773), .Y(n651) );
  NOR2X1 U708 ( .A(n651), .B(n948), .Y(n638) );
  NAND2X1 U709 ( .A(regC[0]), .B(n638), .Y(n585) );
  NAND3X1 U710 ( .A(haddr[3]), .B(haddr[0]), .C(n775), .Y(n632) );
  NAND2X1 U711 ( .A(haddr[2]), .B(haddr[1]), .Y(n660) );
  NAND2X1 U712 ( .A(n777), .B(n774), .Y(n647) );
  NAND2X1 U713 ( .A(haddr[1]), .B(n777), .Y(n646) );
  OAI22X1 U714 ( .A(hrdata[0]), .B(n647), .C(n1200), .D(n646), .Y(n576) );
  AOI21X1 U715 ( .A(n776), .B(n1111), .C(n576), .Y(n577) );
  OAI21X1 U716 ( .A(haddr[0]), .B(n577), .C(n948), .Y(n582) );
  OAI22X1 U717 ( .A(n1200), .B(n647), .C(n1200), .D(n646), .Y(n579) );
  OAI22X1 U718 ( .A(N519), .B(n661), .C(n1212), .D(n660), .Y(n578) );
  OAI21X1 U719 ( .A(n579), .B(n578), .C(haddr[0]), .Y(n580) );
  OAI21X1 U720 ( .A(rx_data_ready), .B(n651), .C(n580), .Y(n581) );
  NOR2X1 U721 ( .A(n582), .B(n581), .Y(n583) );
  AOI21X1 U722 ( .A(n1197), .B(n780), .C(n583), .Y(n584) );
  NAND3X1 U723 ( .A(n586), .B(n585), .C(n584), .Y(N594) );
  NOR2X1 U724 ( .A(n651), .B(haddr[3]), .Y(n734) );
  AOI22X1 U725 ( .A(buffer_occ[1]), .B(n630), .C(n1214), .D(n734), .Y(n589) );
  NAND2X1 U726 ( .A(regC[1]), .B(n638), .Y(n588) );
  NOR2X1 U727 ( .A(n773), .B(haddr[3]), .Y(n591) );
  AOI22X1 U728 ( .A(regD[1]), .B(n780), .C(N520), .D(n568), .Y(n587) );
  NAND3X1 U729 ( .A(n589), .B(n588), .C(n587), .Y(n597) );
  AND2X1 U730 ( .A(n591), .B(haddr[1]), .Y(n590) );
  AOI22X1 U731 ( .A(n1201), .B(n571), .C(N555), .D(n765), .Y(n595) );
  NAND2X1 U732 ( .A(n1201), .B(n767), .Y(n594) );
  NOR3X1 U733 ( .A(haddr[3]), .B(haddr[0]), .C(n646), .Y(n766) );
  NAND3X1 U734 ( .A(n948), .B(n773), .C(n779), .Y(n665) );
  OAI21X1 U735 ( .A(n592), .B(n948), .C(n665), .Y(n769) );
  AOI22X1 U736 ( .A(n1201), .B(n572), .C(hrdata[1]), .D(n769), .Y(n593) );
  NAND3X1 U737 ( .A(n595), .B(n594), .C(n593), .Y(n596) );
  OR2X1 U738 ( .A(n597), .B(n596), .Y(N595) );
  AOI22X1 U739 ( .A(buffer_occ[2]), .B(n630), .C(n1215), .D(n734), .Y(n600) );
  NAND2X1 U740 ( .A(regC[2]), .B(n638), .Y(n599) );
  AOI22X1 U741 ( .A(regD[2]), .B(n780), .C(N521), .D(n568), .Y(n598) );
  NAND3X1 U742 ( .A(n600), .B(n599), .C(n598), .Y(n605) );
  AOI22X1 U743 ( .A(n1202), .B(n571), .C(N556), .D(n765), .Y(n603) );
  NAND2X1 U744 ( .A(n1202), .B(n767), .Y(n602) );
  AOI22X1 U745 ( .A(n1202), .B(n572), .C(hrdata[2]), .D(n565), .Y(n601) );
  NAND3X1 U746 ( .A(n603), .B(n602), .C(n601), .Y(n604) );
  OR2X1 U747 ( .A(n605), .B(n604), .Y(N596) );
  AOI22X1 U748 ( .A(buffer_occ[3]), .B(n630), .C(n1216), .D(n734), .Y(n608) );
  NAND2X1 U749 ( .A(regC[3]), .B(n638), .Y(n607) );
  AOI22X1 U750 ( .A(regD[3]), .B(n780), .C(N522), .D(n568), .Y(n606) );
  NAND3X1 U751 ( .A(n608), .B(n607), .C(n606), .Y(n613) );
  AOI22X1 U752 ( .A(n1203), .B(n571), .C(N557), .D(n765), .Y(n611) );
  NAND2X1 U753 ( .A(n1203), .B(n767), .Y(n610) );
  AOI22X1 U754 ( .A(n1203), .B(n572), .C(hrdata[3]), .D(n769), .Y(n609) );
  NAND3X1 U755 ( .A(n611), .B(n610), .C(n609), .Y(n612) );
  OR2X1 U756 ( .A(n613), .B(n612), .Y(N597) );
  AOI22X1 U757 ( .A(buffer_occ[4]), .B(n630), .C(n1218), .D(n734), .Y(n616) );
  NAND2X1 U758 ( .A(regC[4]), .B(n638), .Y(n615) );
  AOI22X1 U759 ( .A(regD[4]), .B(n780), .C(N523), .D(n568), .Y(n614) );
  NAND3X1 U760 ( .A(n616), .B(n615), .C(n614), .Y(n621) );
  AOI22X1 U761 ( .A(n1204), .B(n571), .C(N558), .D(n765), .Y(n619) );
  NAND2X1 U762 ( .A(n1204), .B(n767), .Y(n618) );
  AOI22X1 U763 ( .A(n1204), .B(n572), .C(hrdata[4]), .D(n565), .Y(n617) );
  NAND3X1 U764 ( .A(n619), .B(n618), .C(n617), .Y(n620) );
  OR2X1 U765 ( .A(n621), .B(n620), .Y(N598) );
  AOI22X1 U766 ( .A(buffer_occ[5]), .B(n630), .C(n1217), .D(n734), .Y(n624) );
  NAND2X1 U767 ( .A(regC[5]), .B(n638), .Y(n623) );
  AOI22X1 U768 ( .A(regD[5]), .B(n780), .C(N524), .D(n568), .Y(n622) );
  NAND3X1 U769 ( .A(n624), .B(n623), .C(n622), .Y(n629) );
  AOI22X1 U770 ( .A(n1205), .B(n571), .C(N559), .D(n765), .Y(n627) );
  NAND2X1 U771 ( .A(n1205), .B(n767), .Y(n626) );
  AOI22X1 U772 ( .A(n1205), .B(n572), .C(hrdata[5]), .D(n769), .Y(n625) );
  NAND3X1 U773 ( .A(n627), .B(n626), .C(n625), .Y(n628) );
  OR2X1 U774 ( .A(n629), .B(n628), .Y(N599) );
  AOI22X1 U775 ( .A(n1206), .B(n572), .C(hrdata[6]), .D(n565), .Y(n637) );
  AOI22X1 U776 ( .A(N560), .B(n765), .C(n1206), .D(n767), .Y(n636) );
  AOI22X1 U777 ( .A(buffer_occ[6]), .B(n630), .C(regC[6]), .D(n638), .Y(n631)
         );
  OAI21X1 U778 ( .A(n632), .B(n1196), .C(n631), .Y(n634) );
  AOI22X1 U779 ( .A(N525), .B(n568), .C(n1206), .D(n571), .Y(n633) );
  NOR2X1 U780 ( .A(n634), .B(n804), .Y(n635) );
  NAND3X1 U781 ( .A(n637), .B(n636), .C(n635), .Y(N600) );
  AOI22X1 U782 ( .A(N526), .B(n568), .C(n1207), .D(n571), .Y(n643) );
  AOI22X1 U783 ( .A(regC[7]), .B(n638), .C(regD[7]), .D(n780), .Y(n642) );
  AOI22X1 U784 ( .A(n1207), .B(n572), .C(hrdata[7]), .D(n769), .Y(n640) );
  AOI22X1 U785 ( .A(N561), .B(n765), .C(n1207), .D(n767), .Y(n639) );
  AND2X1 U786 ( .A(n640), .B(n639), .Y(n641) );
  NAND3X1 U787 ( .A(n643), .B(n642), .C(n641), .Y(N601) );
  OAI22X1 U788 ( .A(hrdata[8]), .B(n647), .C(N450), .D(n646), .Y(n644) );
  AOI21X1 U789 ( .A(n776), .B(n563), .C(n644), .Y(n645) );
  OAI21X1 U790 ( .A(haddr[0]), .B(n645), .C(n948), .Y(n658) );
  OAI22X1 U791 ( .A(N450), .B(n647), .C(N488), .D(n646), .Y(n649) );
  OAI22X1 U792 ( .A(N527), .B(n661), .C(N562), .D(n660), .Y(n648) );
  OAI21X1 U793 ( .A(n649), .B(n648), .C(haddr[0]), .Y(n650) );
  OAI21X1 U794 ( .A(N513), .B(n651), .C(n650), .Y(n657) );
  XNOR2X1 U795 ( .A(n777), .B(haddr[0]), .Y(n674) );
  OAI22X1 U796 ( .A(N586), .B(n661), .C(hrdata[8]), .D(n660), .Y(n652) );
  NOR2X1 U797 ( .A(n778), .B(n652), .Y(n653) );
  OAI21X1 U798 ( .A(n653), .B(haddr[1]), .C(hrdata[8]), .Y(n654) );
  OAI21X1 U799 ( .A(haddr[0]), .B(n805), .C(n654), .Y(n655) );
  NAND2X1 U800 ( .A(n655), .B(haddr[3]), .Y(n656) );
  OAI21X1 U801 ( .A(n658), .B(n657), .C(n656), .Y(N602) );
  AOI22X1 U802 ( .A(N451), .B(n767), .C(N451), .D(n766), .Y(n672) );
  AOI22X1 U803 ( .A(N489), .B(n571), .C(N563), .D(n765), .Y(n671) );
  NOR2X1 U804 ( .A(n948), .B(n778), .Y(n659) );
  OAI21X1 U805 ( .A(hrdata[9]), .B(n660), .C(n659), .Y(n664) );
  OAI22X1 U806 ( .A(n773), .B(hrdata[9]), .C(N587), .D(n661), .Y(n663) );
  NAND2X1 U807 ( .A(N514), .B(n734), .Y(n662) );
  OAI21X1 U808 ( .A(n664), .B(n663), .C(n662), .Y(n669) );
  OAI21X1 U809 ( .A(n774), .B(n948), .C(n665), .Y(n666) );
  NAND2X1 U810 ( .A(N528), .B(n568), .Y(n667) );
  OAI21X1 U811 ( .A(n781), .B(n1099), .C(n667), .Y(n668) );
  NOR2X1 U812 ( .A(n669), .B(n668), .Y(n670) );
  NAND3X1 U813 ( .A(n672), .B(n671), .C(n670), .Y(N603) );
  AOI22X1 U814 ( .A(N490), .B(n571), .C(N564), .D(n765), .Y(n679) );
  NOR2X1 U815 ( .A(n673), .B(n778), .Y(n696) );
  AOI22X1 U816 ( .A(N588), .B(n696), .C(N529), .D(n568), .Y(n678) );
  NAND2X1 U817 ( .A(n674), .B(haddr[0]), .Y(n675) );
  OAI21X1 U818 ( .A(n948), .B(n675), .C(n781), .Y(n698) );
  AOI22X1 U819 ( .A(N452), .B(n767), .C(N452), .D(n766), .Y(n676) );
  AOI21X1 U820 ( .A(hrdata[10]), .B(n698), .C(n803), .Y(n677) );
  NAND3X1 U821 ( .A(n679), .B(n678), .C(n677), .Y(N604) );
  AOI22X1 U822 ( .A(N491), .B(n571), .C(N565), .D(n765), .Y(n683) );
  AOI22X1 U823 ( .A(N589), .B(n696), .C(N530), .D(n568), .Y(n682) );
  AOI22X1 U824 ( .A(N453), .B(n767), .C(N453), .D(n766), .Y(n680) );
  AOI21X1 U825 ( .A(hrdata[11]), .B(n698), .C(n802), .Y(n681) );
  NAND3X1 U826 ( .A(n683), .B(n682), .C(n681), .Y(N605) );
  AOI22X1 U827 ( .A(N492), .B(n571), .C(N566), .D(n765), .Y(n687) );
  AOI22X1 U828 ( .A(N590), .B(n696), .C(N531), .D(n568), .Y(n686) );
  AOI22X1 U829 ( .A(N454), .B(n767), .C(N454), .D(n766), .Y(n684) );
  AOI21X1 U830 ( .A(hrdata[12]), .B(n698), .C(n801), .Y(n685) );
  NAND3X1 U831 ( .A(n687), .B(n686), .C(n685), .Y(N606) );
  AOI22X1 U832 ( .A(N493), .B(n571), .C(N567), .D(n765), .Y(n691) );
  AOI22X1 U833 ( .A(N591), .B(n696), .C(N532), .D(n568), .Y(n690) );
  AOI22X1 U834 ( .A(N455), .B(n767), .C(N455), .D(n766), .Y(n688) );
  AOI21X1 U835 ( .A(hrdata[13]), .B(n698), .C(n800), .Y(n689) );
  NAND3X1 U836 ( .A(n691), .B(n690), .C(n689), .Y(N607) );
  AOI22X1 U837 ( .A(N494), .B(n571), .C(N568), .D(n765), .Y(n695) );
  AOI22X1 U838 ( .A(N592), .B(n696), .C(N533), .D(n568), .Y(n694) );
  AOI22X1 U839 ( .A(N456), .B(n767), .C(N456), .D(n766), .Y(n692) );
  AOI21X1 U840 ( .A(hrdata[14]), .B(n698), .C(n799), .Y(n693) );
  NAND3X1 U841 ( .A(n695), .B(n694), .C(n693), .Y(N608) );
  AOI22X1 U842 ( .A(N495), .B(n571), .C(N569), .D(n765), .Y(n701) );
  AOI22X1 U843 ( .A(N593), .B(n696), .C(N534), .D(n568), .Y(n700) );
  AOI22X1 U844 ( .A(N457), .B(n767), .C(N457), .D(n766), .Y(n697) );
  AOI21X1 U845 ( .A(hrdata[15]), .B(n698), .C(n798), .Y(n699) );
  NAND3X1 U846 ( .A(n701), .B(n700), .C(n699), .Y(N609) );
  AOI22X1 U847 ( .A(N496), .B(n571), .C(N570), .D(n765), .Y(n705) );
  AOI22X1 U848 ( .A(N516), .B(n734), .C(N535), .D(n568), .Y(n704) );
  AOI22X1 U849 ( .A(N420), .B(n767), .C(N458), .D(n766), .Y(n702) );
  AOI21X1 U850 ( .A(hrdata[16]), .B(n565), .C(n797), .Y(n703) );
  NAND3X1 U851 ( .A(n705), .B(n704), .C(n703), .Y(N610) );
  AOI22X1 U852 ( .A(N536), .B(n568), .C(N497), .D(n571), .Y(n709) );
  NAND2X1 U853 ( .A(N571), .B(n765), .Y(n708) );
  AOI22X1 U854 ( .A(N421), .B(n767), .C(N459), .D(n766), .Y(n706) );
  AOI21X1 U855 ( .A(hrdata[17]), .B(n769), .C(n796), .Y(n707) );
  NAND3X1 U856 ( .A(n709), .B(n708), .C(n707), .Y(N611) );
  AOI22X1 U857 ( .A(N537), .B(n568), .C(N498), .D(n571), .Y(n713) );
  NAND2X1 U858 ( .A(N572), .B(n765), .Y(n712) );
  AOI22X1 U859 ( .A(N422), .B(n767), .C(N460), .D(n572), .Y(n710) );
  AOI21X1 U860 ( .A(hrdata[18]), .B(n565), .C(n793), .Y(n711) );
  NAND3X1 U861 ( .A(n713), .B(n712), .C(n711), .Y(N612) );
  AOI22X1 U862 ( .A(N538), .B(n568), .C(N499), .D(n571), .Y(n717) );
  NAND2X1 U863 ( .A(N573), .B(n765), .Y(n716) );
  AOI22X1 U864 ( .A(N423), .B(n767), .C(N461), .D(n572), .Y(n714) );
  AOI21X1 U865 ( .A(hrdata[19]), .B(n769), .C(n792), .Y(n715) );
  NAND3X1 U866 ( .A(n717), .B(n716), .C(n715), .Y(N613) );
  AOI22X1 U867 ( .A(N539), .B(n568), .C(N500), .D(n571), .Y(n721) );
  NAND2X1 U868 ( .A(N574), .B(n765), .Y(n720) );
  AOI22X1 U869 ( .A(N424), .B(n767), .C(N462), .D(n572), .Y(n718) );
  AOI21X1 U870 ( .A(hrdata[20]), .B(n565), .C(n791), .Y(n719) );
  NAND3X1 U871 ( .A(n721), .B(n720), .C(n719), .Y(N614) );
  AOI22X1 U872 ( .A(N540), .B(n568), .C(N501), .D(n571), .Y(n725) );
  NAND2X1 U873 ( .A(N575), .B(n765), .Y(n724) );
  AOI22X1 U874 ( .A(N425), .B(n767), .C(N463), .D(n572), .Y(n722) );
  AOI21X1 U875 ( .A(hrdata[21]), .B(n769), .C(n790), .Y(n723) );
  NAND3X1 U876 ( .A(n725), .B(n724), .C(n723), .Y(N615) );
  AOI22X1 U877 ( .A(N541), .B(n568), .C(N502), .D(n571), .Y(n729) );
  NAND2X1 U878 ( .A(N576), .B(n765), .Y(n728) );
  AOI22X1 U879 ( .A(N426), .B(n767), .C(N464), .D(n572), .Y(n726) );
  AOI21X1 U880 ( .A(hrdata[22]), .B(n565), .C(n789), .Y(n727) );
  NAND3X1 U881 ( .A(n729), .B(n728), .C(n727), .Y(N616) );
  AOI22X1 U882 ( .A(N542), .B(n568), .C(N503), .D(n571), .Y(n733) );
  NAND2X1 U883 ( .A(N577), .B(n765), .Y(n732) );
  AOI22X1 U884 ( .A(N427), .B(n767), .C(N465), .D(n572), .Y(n730) );
  AOI21X1 U885 ( .A(hrdata[23]), .B(n769), .C(n788), .Y(n731) );
  NAND3X1 U886 ( .A(n733), .B(n732), .C(n731), .Y(N617) );
  AOI22X1 U887 ( .A(N504), .B(n571), .C(N578), .D(n765), .Y(n738) );
  AOI22X1 U888 ( .A(n1213), .B(n734), .C(N543), .D(n568), .Y(n737) );
  AOI22X1 U889 ( .A(N428), .B(n767), .C(N466), .D(n572), .Y(n735) );
  AOI21X1 U890 ( .A(hrdata[24]), .B(n565), .C(n787), .Y(n736) );
  NAND3X1 U891 ( .A(n738), .B(n737), .C(n736), .Y(N618) );
  AOI22X1 U892 ( .A(N544), .B(n568), .C(N505), .D(n571), .Y(n742) );
  NAND2X1 U893 ( .A(N579), .B(n765), .Y(n741) );
  AOI22X1 U894 ( .A(N429), .B(n767), .C(N467), .D(n572), .Y(n739) );
  AOI21X1 U895 ( .A(hrdata[25]), .B(n769), .C(n786), .Y(n740) );
  NAND3X1 U896 ( .A(n742), .B(n741), .C(n740), .Y(N619) );
  AOI22X1 U897 ( .A(N545), .B(n568), .C(N506), .D(n571), .Y(n746) );
  NAND2X1 U898 ( .A(N580), .B(n765), .Y(n745) );
  AOI22X1 U899 ( .A(N430), .B(n767), .C(n1208), .D(n572), .Y(n743) );
  AOI21X1 U900 ( .A(hrdata[26]), .B(n565), .C(n785), .Y(n744) );
  NAND3X1 U901 ( .A(n746), .B(n745), .C(n744), .Y(N620) );
  AOI22X1 U902 ( .A(N546), .B(n568), .C(N507), .D(n571), .Y(n750) );
  NAND2X1 U903 ( .A(N581), .B(n765), .Y(n749) );
  AOI22X1 U904 ( .A(N431), .B(n767), .C(n1209), .D(n572), .Y(n747) );
  AOI21X1 U905 ( .A(hrdata[27]), .B(n769), .C(n784), .Y(n748) );
  NAND3X1 U906 ( .A(n750), .B(n749), .C(n748), .Y(N621) );
  AOI22X1 U907 ( .A(N547), .B(n568), .C(N508), .D(n571), .Y(n754) );
  NAND2X1 U908 ( .A(N582), .B(n765), .Y(n753) );
  AOI22X1 U909 ( .A(N432), .B(n767), .C(n1210), .D(n572), .Y(n751) );
  AOI21X1 U910 ( .A(hrdata[28]), .B(n565), .C(n783), .Y(n752) );
  NAND3X1 U911 ( .A(n754), .B(n753), .C(n752), .Y(N622) );
  AOI22X1 U912 ( .A(N548), .B(n568), .C(N509), .D(n571), .Y(n758) );
  NAND2X1 U913 ( .A(N583), .B(n765), .Y(n757) );
  AOI22X1 U914 ( .A(N433), .B(n767), .C(n1211), .D(n572), .Y(n755) );
  AOI21X1 U915 ( .A(hrdata[29]), .B(n769), .C(n782), .Y(n756) );
  NAND3X1 U916 ( .A(n758), .B(n757), .C(n756), .Y(N623) );
  AOI22X1 U917 ( .A(N549), .B(n568), .C(N510), .D(n571), .Y(n762) );
  NAND2X1 U918 ( .A(N584), .B(n765), .Y(n761) );
  AOI22X1 U919 ( .A(N472), .B(n767), .C(N472), .D(n572), .Y(n759) );
  AOI21X1 U920 ( .A(hrdata[30]), .B(n565), .C(n795), .Y(n760) );
  NAND3X1 U921 ( .A(n762), .B(n761), .C(n760), .Y(N624) );
  AOI22X1 U922 ( .A(N550), .B(n568), .C(N511), .D(n571), .Y(n772) );
  NAND2X1 U923 ( .A(N585), .B(n765), .Y(n771) );
  AOI22X1 U924 ( .A(N473), .B(n767), .C(N473), .D(n572), .Y(n768) );
  AOI21X1 U925 ( .A(hrdata[31]), .B(n769), .C(n794), .Y(n770) );
  NAND3X1 U926 ( .A(n772), .B(n771), .C(n770), .Y(N625) );
  INVX2 U927 ( .A(haddr[0]), .Y(n773) );
  INVX2 U928 ( .A(haddr[1]), .Y(n774) );
  INVX2 U929 ( .A(n661), .Y(n775) );
  INVX2 U930 ( .A(n660), .Y(n776) );
  INVX2 U931 ( .A(haddr[2]), .Y(n777) );
  INVX2 U932 ( .A(n674), .Y(n778) );
  INVX2 U933 ( .A(n647), .Y(n779) );
  INVX2 U934 ( .A(n632), .Y(n780) );
  INVX2 U935 ( .A(n666), .Y(n781) );
  INVX2 U936 ( .A(n755), .Y(n782) );
  INVX2 U937 ( .A(n751), .Y(n783) );
  INVX2 U938 ( .A(n747), .Y(n784) );
  INVX2 U939 ( .A(n743), .Y(n785) );
  INVX2 U940 ( .A(n739), .Y(n786) );
  INVX2 U941 ( .A(n735), .Y(n787) );
  INVX2 U942 ( .A(n730), .Y(n788) );
  INVX2 U943 ( .A(n726), .Y(n789) );
  INVX2 U944 ( .A(n722), .Y(n790) );
  INVX2 U945 ( .A(n718), .Y(n791) );
  INVX2 U946 ( .A(n714), .Y(n792) );
  INVX2 U947 ( .A(n710), .Y(n793) );
  INVX2 U948 ( .A(n768), .Y(n794) );
  INVX2 U949 ( .A(n759), .Y(n795) );
  INVX2 U950 ( .A(n706), .Y(n796) );
  INVX2 U951 ( .A(n702), .Y(n797) );
  INVX2 U952 ( .A(n697), .Y(n798) );
  INVX2 U953 ( .A(n692), .Y(n799) );
  INVX2 U954 ( .A(n688), .Y(n800) );
  INVX2 U955 ( .A(n684), .Y(n801) );
  INVX2 U956 ( .A(n680), .Y(n802) );
  INVX2 U957 ( .A(n676), .Y(n803) );
  INVX2 U958 ( .A(n633), .Y(n804) );
  INVX2 U959 ( .A(n653), .Y(n805) );
  OAI21X1 U960 ( .A(n806), .B(n807), .C(n808), .Y(tx_packet[3]) );
  NAND2X1 U961 ( .A(n809), .B(n810), .Y(n807) );
  NOR2X1 U962 ( .A(n808), .B(n809), .Y(tx_packet[2]) );
  OAI21X1 U963 ( .A(hwdata[2]), .B(n811), .C(n812), .Y(tx_packet[1]) );
  AND2X1 U964 ( .A(n813), .B(n808), .Y(n812) );
  NAND2X1 U965 ( .A(regC[2]), .B(n814), .Y(n808) );
  INVX1 U966 ( .A(n813), .Y(tx_packet[0]) );
  NAND3X1 U967 ( .A(n815), .B(n810), .C(n816), .Y(n813) );
  XOR2X1 U968 ( .A(hwdata[1]), .B(hwdata[0]), .Y(n815) );
  NOR2X1 U969 ( .A(n817), .B(n818), .Y(regC[7]) );
  NOR2X1 U970 ( .A(n817), .B(n819), .Y(regC[6]) );
  NOR2X1 U971 ( .A(n817), .B(n820), .Y(regC[5]) );
  NOR2X1 U972 ( .A(n817), .B(n821), .Y(regC[4]) );
  NOR2X1 U973 ( .A(n817), .B(n822), .Y(regC[3]) );
  NOR2X1 U974 ( .A(n810), .B(n817), .Y(regC[2]) );
  INVX1 U975 ( .A(n806), .Y(regC[1]) );
  NAND2X1 U976 ( .A(hwdata[1]), .B(n816), .Y(n806) );
  INVX1 U977 ( .A(n811), .Y(regC[0]) );
  NAND2X1 U978 ( .A(hwdata[0]), .B(n816), .Y(n811) );
  INVX1 U979 ( .A(n817), .Y(n816) );
  NAND3X1 U980 ( .A(n823), .B(n824), .C(n825), .Y(n817) );
  NOR2X1 U981 ( .A(n826), .B(n827), .Y(n825) );
  NAND2X1 U982 ( .A(n828), .B(n829), .Y(next_hrdata[9]) );
  AOI22X1 U983 ( .A(N587), .B(n830), .C(hrdata[9]), .D(n569), .Y(n829) );
  AOI22X1 U984 ( .A(buffer[9]), .B(n573), .C(N603), .D(n833), .Y(n828) );
  NAND2X1 U985 ( .A(n834), .B(n835), .Y(next_hrdata[8]) );
  AOI22X1 U986 ( .A(N586), .B(n830), .C(hrdata[8]), .D(n831), .Y(n835) );
  AOI22X1 U987 ( .A(buffer[8]), .B(n573), .C(N602), .D(n833), .Y(n834) );
  NAND2X1 U988 ( .A(n836), .B(n837), .Y(next_hrdata[7]) );
  AOI22X1 U989 ( .A(n838), .B(n839), .C(hrdata[7]), .D(n840), .Y(n837) );
  OAI22X1 U990 ( .A(n841), .B(n818), .C(n842), .D(n843), .Y(n839) );
  INVX1 U991 ( .A(hwdata[7]), .Y(n818) );
  AOI22X1 U992 ( .A(buffer[7]), .B(n573), .C(N601), .D(n833), .Y(n836) );
  NAND2X1 U993 ( .A(n844), .B(n845), .Y(next_hrdata[6]) );
  AOI22X1 U994 ( .A(n838), .B(n846), .C(hrdata[6]), .D(n840), .Y(n845) );
  OAI22X1 U995 ( .A(n841), .B(n819), .C(n1196), .D(n843), .Y(n846) );
  AOI22X1 U996 ( .A(buffer[6]), .B(n573), .C(N600), .D(n833), .Y(n844) );
  NAND2X1 U997 ( .A(n847), .B(n848), .Y(next_hrdata[5]) );
  AOI22X1 U998 ( .A(n838), .B(n849), .C(hrdata[5]), .D(n840), .Y(n848) );
  OAI22X1 U999 ( .A(n841), .B(n820), .C(n850), .D(n843), .Y(n849) );
  AOI22X1 U1000 ( .A(buffer[5]), .B(n573), .C(N599), .D(n833), .Y(n847) );
  NAND2X1 U1001 ( .A(n851), .B(n852), .Y(next_hrdata[4]) );
  AOI22X1 U1002 ( .A(n838), .B(n853), .C(hrdata[4]), .D(n840), .Y(n852) );
  OAI22X1 U1003 ( .A(n841), .B(n821), .C(n854), .D(n843), .Y(n853) );
  INVX1 U1004 ( .A(hwdata[4]), .Y(n821) );
  AOI22X1 U1005 ( .A(buffer[4]), .B(n573), .C(N598), .D(n833), .Y(n851) );
  NAND2X1 U1006 ( .A(n855), .B(n856), .Y(next_hrdata[3]) );
  AOI22X1 U1007 ( .A(n838), .B(n857), .C(hrdata[3]), .D(n840), .Y(n856) );
  OAI22X1 U1008 ( .A(n841), .B(n822), .C(n858), .D(n843), .Y(n857) );
  INVX1 U1009 ( .A(hwdata[3]), .Y(n822) );
  AOI22X1 U1010 ( .A(buffer[3]), .B(n573), .C(N597), .D(n833), .Y(n855) );
  OAI21X1 U1011 ( .A(n567), .B(n860), .C(n861), .Y(next_hrdata[31]) );
  AOI22X1 U1012 ( .A(hrdata[31]), .B(n569), .C(buffer[31]), .D(n573), .Y(n861)
         );
  INVX1 U1013 ( .A(N625), .Y(n860) );
  OAI21X1 U1014 ( .A(n567), .B(n862), .C(n863), .Y(next_hrdata[30]) );
  AOI22X1 U1015 ( .A(hrdata[30]), .B(n831), .C(buffer[30]), .D(n573), .Y(n863)
         );
  INVX1 U1016 ( .A(N624), .Y(n862) );
  NAND2X1 U1017 ( .A(n864), .B(n865), .Y(next_hrdata[2]) );
  AOI22X1 U1018 ( .A(n838), .B(n866), .C(hrdata[2]), .D(n840), .Y(n865) );
  OAI22X1 U1019 ( .A(n841), .B(n810), .C(n867), .D(n843), .Y(n866) );
  AOI22X1 U1020 ( .A(buffer[2]), .B(n573), .C(N596), .D(n833), .Y(n864) );
  OAI21X1 U1021 ( .A(n567), .B(n868), .C(n869), .Y(next_hrdata[29]) );
  AOI22X1 U1022 ( .A(hrdata[29]), .B(n569), .C(buffer[29]), .D(n573), .Y(n869)
         );
  INVX1 U1023 ( .A(N623), .Y(n868) );
  OAI21X1 U1024 ( .A(n567), .B(n870), .C(n871), .Y(next_hrdata[28]) );
  AOI22X1 U1025 ( .A(hrdata[28]), .B(n831), .C(buffer[28]), .D(n573), .Y(n871)
         );
  INVX1 U1026 ( .A(N622), .Y(n870) );
  OAI21X1 U1027 ( .A(n567), .B(n872), .C(n873), .Y(next_hrdata[27]) );
  AOI22X1 U1028 ( .A(hrdata[27]), .B(n569), .C(buffer[27]), .D(n573), .Y(n873)
         );
  INVX1 U1029 ( .A(N621), .Y(n872) );
  OAI21X1 U1030 ( .A(n859), .B(n874), .C(n875), .Y(next_hrdata[26]) );
  AOI22X1 U1031 ( .A(hrdata[26]), .B(n831), .C(buffer[26]), .D(n832), .Y(n875)
         );
  INVX1 U1032 ( .A(N620), .Y(n874) );
  OAI21X1 U1033 ( .A(n859), .B(n876), .C(n877), .Y(next_hrdata[25]) );
  AOI22X1 U1034 ( .A(hrdata[25]), .B(n569), .C(buffer[25]), .D(n832), .Y(n877)
         );
  INVX1 U1035 ( .A(N619), .Y(n876) );
  OAI21X1 U1036 ( .A(n859), .B(n878), .C(n879), .Y(next_hrdata[24]) );
  AOI22X1 U1037 ( .A(hrdata[24]), .B(n831), .C(buffer[24]), .D(n832), .Y(n879)
         );
  INVX1 U1038 ( .A(N618), .Y(n878) );
  OAI21X1 U1039 ( .A(n859), .B(n880), .C(n881), .Y(next_hrdata[23]) );
  AOI22X1 U1040 ( .A(hrdata[23]), .B(n569), .C(buffer[23]), .D(n832), .Y(n881)
         );
  INVX1 U1041 ( .A(N617), .Y(n880) );
  OAI21X1 U1042 ( .A(n859), .B(n882), .C(n883), .Y(next_hrdata[22]) );
  AOI22X1 U1043 ( .A(hrdata[22]), .B(n831), .C(buffer[22]), .D(n832), .Y(n883)
         );
  INVX1 U1044 ( .A(N616), .Y(n882) );
  OAI21X1 U1045 ( .A(n859), .B(n884), .C(n885), .Y(next_hrdata[21]) );
  AOI22X1 U1046 ( .A(hrdata[21]), .B(n569), .C(buffer[21]), .D(n832), .Y(n885)
         );
  INVX1 U1047 ( .A(N615), .Y(n884) );
  OAI21X1 U1048 ( .A(n859), .B(n886), .C(n887), .Y(next_hrdata[20]) );
  AOI22X1 U1049 ( .A(hrdata[20]), .B(n831), .C(buffer[20]), .D(n832), .Y(n887)
         );
  INVX1 U1050 ( .A(N614), .Y(n886) );
  NAND2X1 U1051 ( .A(n888), .B(n889), .Y(next_hrdata[1]) );
  AOI22X1 U1052 ( .A(n838), .B(n890), .C(hrdata[1]), .D(n840), .Y(n889) );
  OAI22X1 U1053 ( .A(n841), .B(n814), .C(n891), .D(n843), .Y(n890) );
  AOI22X1 U1054 ( .A(buffer[1]), .B(n573), .C(N595), .D(n833), .Y(n888) );
  OAI21X1 U1055 ( .A(n859), .B(n892), .C(n893), .Y(next_hrdata[19]) );
  AOI22X1 U1056 ( .A(hrdata[19]), .B(n569), .C(buffer[19]), .D(n832), .Y(n893)
         );
  INVX1 U1057 ( .A(N613), .Y(n892) );
  OAI21X1 U1058 ( .A(n859), .B(n894), .C(n895), .Y(next_hrdata[18]) );
  AOI22X1 U1059 ( .A(hrdata[18]), .B(n831), .C(buffer[18]), .D(n832), .Y(n895)
         );
  INVX1 U1060 ( .A(N612), .Y(n894) );
  OAI21X1 U1061 ( .A(n859), .B(n896), .C(n897), .Y(next_hrdata[17]) );
  AOI22X1 U1062 ( .A(hrdata[17]), .B(n569), .C(buffer[17]), .D(n832), .Y(n897)
         );
  INVX1 U1063 ( .A(N611), .Y(n896) );
  OAI21X1 U1064 ( .A(n859), .B(n898), .C(n899), .Y(next_hrdata[16]) );
  AOI22X1 U1065 ( .A(hrdata[16]), .B(n831), .C(buffer[16]), .D(n832), .Y(n899)
         );
  INVX1 U1066 ( .A(N610), .Y(n898) );
  NAND2X1 U1067 ( .A(n900), .B(n901), .Y(next_hrdata[15]) );
  AOI22X1 U1068 ( .A(N593), .B(n830), .C(hrdata[15]), .D(n569), .Y(n901) );
  AOI22X1 U1069 ( .A(buffer[15]), .B(n573), .C(N609), .D(n833), .Y(n900) );
  NAND2X1 U1070 ( .A(n902), .B(n903), .Y(next_hrdata[14]) );
  AOI22X1 U1071 ( .A(N592), .B(n830), .C(hrdata[14]), .D(n831), .Y(n903) );
  AOI22X1 U1072 ( .A(buffer[14]), .B(n573), .C(N608), .D(n833), .Y(n902) );
  NAND2X1 U1073 ( .A(n904), .B(n905), .Y(next_hrdata[13]) );
  AOI22X1 U1074 ( .A(N591), .B(n830), .C(hrdata[13]), .D(n569), .Y(n905) );
  AOI22X1 U1075 ( .A(buffer[13]), .B(n573), .C(N607), .D(n833), .Y(n904) );
  NAND2X1 U1076 ( .A(n906), .B(n907), .Y(next_hrdata[12]) );
  AOI22X1 U1077 ( .A(N590), .B(n830), .C(hrdata[12]), .D(n831), .Y(n907) );
  AOI22X1 U1078 ( .A(buffer[12]), .B(n573), .C(N606), .D(n833), .Y(n906) );
  NAND2X1 U1079 ( .A(n908), .B(n909), .Y(next_hrdata[11]) );
  AOI22X1 U1080 ( .A(N589), .B(n830), .C(hrdata[11]), .D(n569), .Y(n909) );
  AOI22X1 U1081 ( .A(buffer[11]), .B(n573), .C(N605), .D(n833), .Y(n908) );
  NAND2X1 U1082 ( .A(n910), .B(n911), .Y(next_hrdata[10]) );
  AOI22X1 U1083 ( .A(N588), .B(n830), .C(hrdata[10]), .D(n831), .Y(n911) );
  OAI21X1 U1084 ( .A(n912), .B(n913), .C(n914), .Y(n831) );
  NOR2X1 U1085 ( .A(n915), .B(n916), .Y(n830) );
  AOI22X1 U1086 ( .A(buffer[10]), .B(n573), .C(N604), .D(n833), .Y(n910) );
  NAND2X1 U1087 ( .A(n917), .B(n918), .Y(next_hrdata[0]) );
  AOI22X1 U1088 ( .A(n838), .B(n919), .C(hrdata[0]), .D(n840), .Y(n918) );
  OAI21X1 U1089 ( .A(n912), .B(n915), .C(n914), .Y(n840) );
  MUX2X1 U1090 ( .B(n920), .A(n921), .S(n922), .Y(n914) );
  INVX1 U1091 ( .A(n923), .Y(n921) );
  AOI21X1 U1092 ( .A(n924), .B(n925), .C(n926), .Y(n920) );
  INVX1 U1093 ( .A(n927), .Y(n926) );
  NOR2X1 U1094 ( .A(prev_hresp), .B(hwrite), .Y(n924) );
  INVX1 U1095 ( .A(n928), .Y(n912) );
  OAI21X1 U1096 ( .A(n916), .B(n929), .C(n930), .Y(n928) );
  NAND2X1 U1097 ( .A(n564), .B(n931), .Y(n929) );
  OAI22X1 U1098 ( .A(n841), .B(n809), .C(n932), .D(n843), .Y(n919) );
  OAI21X1 U1099 ( .A(n933), .B(n934), .C(n935), .Y(n843) );
  AND2X1 U1100 ( .A(n930), .B(n916), .Y(n935) );
  NAND3X1 U1101 ( .A(n936), .B(n937), .C(prev_hsize[0]), .Y(n930) );
  INVX1 U1102 ( .A(prev_hsize[1]), .Y(n937) );
  INVX1 U1103 ( .A(n938), .Y(n841) );
  OAI21X1 U1104 ( .A(n933), .B(n934), .C(n939), .Y(n938) );
  OAI21X1 U1105 ( .A(n940), .B(n562), .C(n941), .Y(n939) );
  INVX1 U1106 ( .A(n916), .Y(n941) );
  NAND2X1 U1107 ( .A(n942), .B(n936), .Y(n916) );
  INVX1 U1108 ( .A(n943), .Y(n934) );
  INVX1 U1109 ( .A(n915), .Y(n838) );
  NAND2X1 U1110 ( .A(n922), .B(n923), .Y(n915) );
  OAI21X1 U1111 ( .A(n944), .B(n945), .C(n946), .Y(n923) );
  OAI21X1 U1112 ( .A(n947), .B(n777), .C(n948), .Y(n946) );
  INVX1 U1113 ( .A(n949), .Y(n947) );
  XOR2X1 U1114 ( .A(n950), .B(n951), .Y(n945) );
  NOR2X1 U1115 ( .A(n952), .B(n953), .Y(n951) );
  XOR2X1 U1116 ( .A(prev_haddr[3]), .B(n954), .Y(n950) );
  NOR2X1 U1117 ( .A(n777), .B(n955), .Y(n944) );
  NAND2X1 U1118 ( .A(haddr[3]), .B(n949), .Y(n955) );
  OAI21X1 U1119 ( .A(n956), .B(n957), .C(n958), .Y(n949) );
  OAI21X1 U1120 ( .A(n959), .B(n960), .C(n954), .Y(n958) );
  NAND2X1 U1121 ( .A(n959), .B(n960), .Y(n954) );
  XOR2X1 U1122 ( .A(n953), .B(prev_haddr[2]), .Y(n960) );
  NAND3X1 U1123 ( .A(n942), .B(prev_haddr[0]), .C(prev_haddr[1]), .Y(n953) );
  OR2X1 U1124 ( .A(n961), .B(n959), .Y(n957) );
  NOR2X1 U1125 ( .A(n962), .B(n963), .Y(n959) );
  INVX1 U1126 ( .A(n964), .Y(n962) );
  AND2X1 U1127 ( .A(n963), .B(n965), .Y(n956) );
  OAI21X1 U1128 ( .A(haddr[0]), .B(n964), .C(haddr[1]), .Y(n965) );
  XNOR2X1 U1129 ( .A(n966), .B(n967), .Y(n964) );
  XNOR2X1 U1130 ( .A(n968), .B(prev_haddr[1]), .Y(n963) );
  NAND2X1 U1131 ( .A(n942), .B(prev_haddr[0]), .Y(n968) );
  AOI22X1 U1132 ( .A(buffer[0]), .B(n573), .C(N594), .D(n833), .Y(n917) );
  NAND3X1 U1133 ( .A(n925), .B(n927), .C(n969), .Y(n859) );
  NOR2X1 U1134 ( .A(n922), .B(n970), .Y(n969) );
  NAND2X1 U1135 ( .A(n971), .B(n824), .Y(n970) );
  INVX1 U1136 ( .A(prev_hresp), .Y(n824) );
  NOR2X1 U1137 ( .A(n927), .B(n922), .Y(n832) );
  INVX1 U1138 ( .A(n913), .Y(n922) );
  NAND3X1 U1139 ( .A(prev_hwrite), .B(hsel), .C(n972), .Y(n913) );
  AOI21X1 U1140 ( .A(n973), .B(n952), .C(n974), .Y(n972) );
  NAND2X1 U1141 ( .A(n975), .B(n971), .Y(n974) );
  INVX1 U1142 ( .A(prev_haddr[2]), .Y(n952) );
  INVX1 U1143 ( .A(prev_haddr[3]), .Y(n973) );
  NAND3X1 U1144 ( .A(n976), .B(n961), .C(n977), .Y(n927) );
  AND2X1 U1145 ( .A(hready), .B(hr_avail), .Y(n977) );
  NOR2X1 U1146 ( .A(haddr[3]), .B(haddr[2]), .Y(n976) );
  INVX1 U1147 ( .A(n932), .Y(n1197) );
  INVX1 U1148 ( .A(n978), .Y(clear) );
  OAI21X1 U1149 ( .A(n979), .B(n980), .C(n981), .Y(n978) );
  OAI21X1 U1150 ( .A(n982), .B(n983), .C(n984), .Y(n980) );
  INVX1 U1151 ( .A(prev_clear), .Y(n984) );
  NAND2X1 U1152 ( .A(n985), .B(hwdata[0]), .Y(n983) );
  NAND3X1 U1153 ( .A(n814), .B(n810), .C(n823), .Y(n982) );
  INVX1 U1154 ( .A(n986), .Y(n823) );
  NAND3X1 U1155 ( .A(n987), .B(n820), .C(n988), .Y(n986) );
  NOR2X1 U1156 ( .A(hwdata[4]), .B(hwdata[3]), .Y(n988) );
  INVX1 U1157 ( .A(hwdata[5]), .Y(n820) );
  NOR2X1 U1158 ( .A(hwdata[7]), .B(hwdata[6]), .Y(n987) );
  INVX1 U1159 ( .A(hwdata[2]), .Y(n810) );
  INVX1 U1160 ( .A(hwdata[1]), .Y(n814) );
  NOR2X1 U1161 ( .A(n989), .B(n990), .Y(n979) );
  NAND3X1 U1162 ( .A(n991), .B(n992), .C(n993), .Y(n990) );
  NOR2X1 U1163 ( .A(n994), .B(n995), .Y(n993) );
  INVX1 U1164 ( .A(hwdata[11]), .Y(n992) );
  INVX1 U1165 ( .A(hwdata[10]), .Y(n991) );
  NAND3X1 U1166 ( .A(n996), .B(n997), .C(n998), .Y(n989) );
  NOR2X1 U1167 ( .A(hwdata[13]), .B(hwdata[12]), .Y(n998) );
  NOR2X1 U1168 ( .A(hwdata[9]), .B(hwdata[15]), .Y(n996) );
  INVX1 U1169 ( .A(n999), .Y(n1200) );
  MUX2X1 U1170 ( .B(buffer[0]), .A(hrdata[0]), .S(n574), .Y(n999) );
  INVX1 U1171 ( .A(n1001), .Y(n1201) );
  MUX2X1 U1172 ( .B(buffer[1]), .A(hrdata[1]), .S(n574), .Y(n1001) );
  INVX1 U1173 ( .A(n1002), .Y(n1202) );
  MUX2X1 U1174 ( .B(buffer[2]), .A(hrdata[2]), .S(n574), .Y(n1002) );
  INVX1 U1175 ( .A(n1003), .Y(n1203) );
  MUX2X1 U1176 ( .B(buffer[3]), .A(hrdata[3]), .S(n574), .Y(n1003) );
  INVX1 U1177 ( .A(n1004), .Y(n1204) );
  MUX2X1 U1178 ( .B(buffer[4]), .A(hrdata[4]), .S(n574), .Y(n1004) );
  INVX1 U1179 ( .A(n1005), .Y(n1205) );
  MUX2X1 U1180 ( .B(buffer[5]), .A(hrdata[5]), .S(n574), .Y(n1005) );
  INVX1 U1181 ( .A(n1006), .Y(n1206) );
  MUX2X1 U1182 ( .B(buffer[6]), .A(hrdata[6]), .S(n574), .Y(n1006) );
  INVX1 U1183 ( .A(n1007), .Y(n1207) );
  MUX2X1 U1184 ( .B(buffer[7]), .A(hrdata[7]), .S(n574), .Y(n1007) );
  INVX1 U1185 ( .A(n1008), .Y(n1208) );
  INVX1 U1186 ( .A(n1009), .Y(n1209) );
  INVX1 U1187 ( .A(n1010), .Y(n1210) );
  INVX1 U1188 ( .A(n1011), .Y(n1211) );
  OAI21X1 U1189 ( .A(n1012), .B(n1013), .C(n1014), .Y(n1212) );
  OAI21X1 U1190 ( .A(n562), .B(n940), .C(tx_error), .Y(n1014) );
  INVX1 U1191 ( .A(n1015), .Y(n1213) );
  INVX1 U1192 ( .A(n1016), .Y(hresp_high) );
  INVX1 U1193 ( .A(n975), .Y(hresp) );
  NOR2X1 U1194 ( .A(rx_transfer_active), .B(n1017), .Y(d_mode) );
  NOR2X1 U1195 ( .A(n564), .B(n842), .Y(N593) );
  INVX1 U1196 ( .A(regD[7]), .Y(n842) );
  OAI21X1 U1197 ( .A(n1018), .B(n1019), .C(n1020), .Y(regD[7]) );
  AOI22X1 U1198 ( .A(hwdata[7]), .B(n985), .C(hwdata[15]), .D(n1021), .Y(n1020) );
  INVX1 U1199 ( .A(register[7]), .Y(n1019) );
  NOR2X1 U1200 ( .A(n564), .B(n1196), .Y(N592) );
  AOI21X1 U1201 ( .A(n1022), .B(register[6]), .C(n1023), .Y(n1196) );
  OAI22X1 U1202 ( .A(n819), .B(n1024), .C(n997), .D(n994), .Y(n1023) );
  INVX1 U1203 ( .A(hwdata[14]), .Y(n997) );
  INVX1 U1204 ( .A(hwdata[6]), .Y(n819) );
  NOR2X1 U1205 ( .A(n564), .B(n850), .Y(N591) );
  INVX1 U1206 ( .A(regD[5]), .Y(n850) );
  OAI21X1 U1207 ( .A(n1018), .B(n1025), .C(n1026), .Y(regD[5]) );
  AOI22X1 U1208 ( .A(hwdata[5]), .B(n985), .C(hwdata[13]), .D(n1021), .Y(n1026) );
  INVX1 U1209 ( .A(register[5]), .Y(n1025) );
  NOR2X1 U1210 ( .A(n564), .B(n854), .Y(N590) );
  INVX1 U1211 ( .A(regD[4]), .Y(n854) );
  OAI21X1 U1212 ( .A(n1018), .B(n1027), .C(n1028), .Y(regD[4]) );
  AOI22X1 U1213 ( .A(hwdata[4]), .B(n985), .C(hwdata[12]), .D(n1021), .Y(n1028) );
  INVX1 U1214 ( .A(register[4]), .Y(n1027) );
  NOR2X1 U1215 ( .A(n564), .B(n858), .Y(N589) );
  INVX1 U1216 ( .A(regD[3]), .Y(n858) );
  OAI21X1 U1217 ( .A(n1018), .B(n1029), .C(n1030), .Y(regD[3]) );
  AOI22X1 U1218 ( .A(hwdata[3]), .B(n985), .C(hwdata[11]), .D(n1021), .Y(n1030) );
  INVX1 U1219 ( .A(register[3]), .Y(n1029) );
  NOR2X1 U1220 ( .A(n564), .B(n867), .Y(N588) );
  INVX1 U1221 ( .A(regD[2]), .Y(n867) );
  OAI21X1 U1222 ( .A(n1018), .B(n1031), .C(n1032), .Y(regD[2]) );
  AOI22X1 U1223 ( .A(n985), .B(hwdata[2]), .C(hwdata[10]), .D(n1021), .Y(n1032) );
  INVX1 U1224 ( .A(register[2]), .Y(n1031) );
  NOR2X1 U1225 ( .A(n564), .B(n891), .Y(N587) );
  INVX1 U1226 ( .A(regD[1]), .Y(n891) );
  OAI21X1 U1227 ( .A(n1018), .B(n1033), .C(n1034), .Y(regD[1]) );
  AOI22X1 U1228 ( .A(n985), .B(hwdata[1]), .C(hwdata[9]), .D(n1021), .Y(n1034)
         );
  INVX1 U1229 ( .A(n994), .Y(n1021) );
  INVX1 U1230 ( .A(n1024), .Y(n985) );
  INVX1 U1231 ( .A(register[1]), .Y(n1033) );
  INVX1 U1232 ( .A(n1022), .Y(n1018) );
  NOR2X1 U1233 ( .A(n932), .B(n564), .Y(N586) );
  OAI21X1 U1234 ( .A(n1035), .B(n1036), .C(n981), .Y(n932) );
  OR2X1 U1235 ( .A(n1037), .B(n1038), .Y(n981) );
  NAND3X1 U1236 ( .A(prev_clear), .B(n1039), .C(n1040), .Y(n1038) );
  NOR2X1 U1237 ( .A(buffer_occ[2]), .B(buffer_occ[1]), .Y(n1040) );
  NAND3X1 U1238 ( .A(n1041), .B(n1042), .C(n1043), .Y(n1037) );
  NOR2X1 U1239 ( .A(buffer_occ[6]), .B(buffer_occ[5]), .Y(n1043) );
  OAI22X1 U1240 ( .A(n994), .B(n995), .C(n809), .D(n1024), .Y(n1036) );
  NAND2X1 U1241 ( .A(n943), .B(n1044), .Y(n1024) );
  INVX1 U1242 ( .A(hwdata[0]), .Y(n809) );
  INVX1 U1243 ( .A(hwdata[8]), .Y(n995) );
  NAND3X1 U1244 ( .A(n1044), .B(n967), .C(n936), .Y(n994) );
  INVX1 U1245 ( .A(n942), .Y(n967) );
  AND2X1 U1246 ( .A(register[0]), .B(n1022), .Y(n1035) );
  OAI21X1 U1247 ( .A(n943), .B(n1045), .C(n1044), .Y(n1022) );
  INVX1 U1248 ( .A(n826), .Y(n1044) );
  NAND2X1 U1249 ( .A(prev_hwrite), .B(n925), .Y(n826) );
  INVX1 U1250 ( .A(n1046), .Y(n925) );
  NAND3X1 U1251 ( .A(hsel), .B(n975), .C(hready), .Y(n1046) );
  INVX1 U1252 ( .A(n1047), .Y(hready) );
  NAND3X1 U1253 ( .A(hrready), .B(n1016), .C(hwready), .Y(n1047) );
  NAND2X1 U1254 ( .A(n1048), .B(n1049), .Y(n1016) );
  INVX1 U1255 ( .A(prev_hresp_high), .Y(n1049) );
  NOR2X1 U1256 ( .A(n1048), .B(prev_hresp_high), .Y(n975) );
  OAI21X1 U1257 ( .A(n1050), .B(n1051), .C(n570), .Y(n1048) );
  INVX1 U1258 ( .A(hsel), .Y(n1051) );
  AND2X1 U1259 ( .A(n1053), .B(n1054), .Y(n1050) );
  MUX2X1 U1260 ( .B(n1055), .A(n1056), .S(haddr[2]), .Y(n1054) );
  NOR2X1 U1261 ( .A(n1057), .B(n971), .Y(n1056) );
  INVX1 U1262 ( .A(hwrite), .Y(n971) );
  OAI21X1 U1263 ( .A(n1058), .B(n948), .C(n1059), .Y(n1055) );
  MUX2X1 U1264 ( .B(n1060), .A(n1061), .S(hwrite), .Y(n1059) );
  OAI21X1 U1265 ( .A(n940), .B(n1062), .C(n948), .Y(n1061) );
  NOR2X1 U1266 ( .A(n1063), .B(n1064), .Y(n1060) );
  OAI21X1 U1267 ( .A(n1065), .B(n1066), .C(n931), .Y(n1064) );
  NAND2X1 U1268 ( .A(buffer_occ[3]), .B(buffer_occ[2]), .Y(n1066) );
  NAND2X1 U1269 ( .A(buffer_occ[1]), .B(buffer_occ[0]), .Y(n1065) );
  NAND3X1 U1270 ( .A(n1067), .B(n1068), .C(n1042), .Y(n1063) );
  NOR2X1 U1271 ( .A(n1062), .B(n931), .Y(n1058) );
  INVX1 U1272 ( .A(n961), .Y(n1062) );
  NOR2X1 U1273 ( .A(haddr[1]), .B(haddr[0]), .Y(n961) );
  AOI22X1 U1274 ( .A(hsize[1]), .B(n1069), .C(n1070), .D(n931), .Y(n1053) );
  INVX1 U1275 ( .A(n933), .Y(n1070) );
  NAND2X1 U1276 ( .A(n1057), .B(haddr[0]), .Y(n933) );
  OAI21X1 U1277 ( .A(n1071), .B(n1072), .C(n1073), .Y(n1069) );
  INVX1 U1278 ( .A(n1057), .Y(n1073) );
  NOR2X1 U1279 ( .A(n948), .B(haddr[1]), .Y(n1057) );
  NAND2X1 U1280 ( .A(haddr[2]), .B(haddr[1]), .Y(n1072) );
  NAND2X1 U1281 ( .A(haddr[0]), .B(n948), .Y(n1071) );
  INVX1 U1282 ( .A(haddr[3]), .Y(n948) );
  NOR2X1 U1283 ( .A(n942), .B(n827), .Y(n1045) );
  INVX1 U1284 ( .A(n936), .Y(n827) );
  NOR2X1 U1285 ( .A(n1074), .B(prev_haddr[0]), .Y(n936) );
  NOR2X1 U1286 ( .A(prev_hsize[0]), .B(prev_hsize[1]), .Y(n942) );
  NOR2X1 U1287 ( .A(n966), .B(n1074), .Y(n943) );
  NAND3X1 U1288 ( .A(prev_haddr[2]), .B(n1075), .C(prev_haddr[3]), .Y(n1074)
         );
  INVX1 U1289 ( .A(prev_haddr[1]), .Y(n1075) );
  INVX1 U1290 ( .A(prev_haddr[0]), .Y(n966) );
  NOR2X1 U1291 ( .A(n1012), .B(n1076), .Y(N585) );
  NOR2X1 U1292 ( .A(n1012), .B(n1077), .Y(N584) );
  NOR2X1 U1293 ( .A(n1012), .B(n1078), .Y(N583) );
  NOR2X1 U1294 ( .A(n1012), .B(n1079), .Y(N582) );
  NOR2X1 U1295 ( .A(n1012), .B(n1080), .Y(N581) );
  NOR2X1 U1296 ( .A(n1012), .B(n1081), .Y(N580) );
  NOR2X1 U1297 ( .A(n1012), .B(n1082), .Y(N579) );
  NOR2X1 U1298 ( .A(n1012), .B(n1083), .Y(N578) );
  NOR2X1 U1299 ( .A(n1012), .B(n1084), .Y(N577) );
  NOR2X1 U1300 ( .A(n1012), .B(n1085), .Y(N576) );
  NOR2X1 U1301 ( .A(n1012), .B(n1086), .Y(N575) );
  NOR2X1 U1302 ( .A(n1012), .B(n1087), .Y(N574) );
  NOR2X1 U1303 ( .A(n1012), .B(n1088), .Y(N573) );
  NOR2X1 U1304 ( .A(n1012), .B(n1089), .Y(N572) );
  NOR2X1 U1305 ( .A(n1012), .B(n1090), .Y(N571) );
  NOR2X1 U1306 ( .A(n1012), .B(n1091), .Y(N570) );
  NOR2X1 U1307 ( .A(n1012), .B(n1092), .Y(N569) );
  OAI22X1 U1308 ( .A(n1012), .B(n1093), .C(n564), .D(n1068), .Y(N568) );
  OAI22X1 U1309 ( .A(n1012), .B(n1094), .C(n564), .D(n1067), .Y(N567) );
  OAI22X1 U1310 ( .A(n1012), .B(n1095), .C(n564), .D(n1042), .Y(N566) );
  OAI22X1 U1311 ( .A(n1012), .B(n1096), .C(n1041), .D(n564), .Y(N565) );
  OAI22X1 U1312 ( .A(n1012), .B(n1097), .C(n1098), .D(n564), .Y(N564) );
  OAI22X1 U1313 ( .A(n1012), .B(n1099), .C(n1100), .D(n564), .Y(N563) );
  OAI22X1 U1314 ( .A(n1012), .B(n1101), .C(n1039), .D(n564), .Y(N562) );
  NOR2X1 U1315 ( .A(n1012), .B(n1102), .Y(N561) );
  NOR2X1 U1316 ( .A(n1012), .B(n1103), .Y(N560) );
  NOR2X1 U1317 ( .A(n1012), .B(n1104), .Y(N559) );
  NOR2X1 U1318 ( .A(n1012), .B(n1105), .Y(N558) );
  NOR2X1 U1319 ( .A(n1012), .B(n1106), .Y(N557) );
  NOR2X1 U1320 ( .A(n1012), .B(n1107), .Y(N556) );
  NOR2X1 U1321 ( .A(n1012), .B(n1108), .Y(N555) );
  NOR2X1 U1322 ( .A(n1076), .B(n570), .Y(N550) );
  OAI22X1 U1323 ( .A(n1109), .B(n1068), .C(n1077), .D(n1052), .Y(N549) );
  INVX1 U1324 ( .A(buffer_occ[6]), .Y(n1068) );
  OAI22X1 U1325 ( .A(n1109), .B(n1067), .C(n1078), .D(n1052), .Y(N548) );
  INVX1 U1326 ( .A(hrdata[29]), .Y(n1078) );
  INVX1 U1327 ( .A(buffer_occ[5]), .Y(n1067) );
  OAI22X1 U1328 ( .A(n1109), .B(n1042), .C(n1079), .D(n1052), .Y(N547) );
  INVX1 U1329 ( .A(hrdata[28]), .Y(n1079) );
  INVX1 U1330 ( .A(buffer_occ[4]), .Y(n1042) );
  OAI22X1 U1331 ( .A(n1041), .B(n1109), .C(n1080), .D(n1052), .Y(N546) );
  INVX1 U1332 ( .A(hrdata[27]), .Y(n1080) );
  INVX1 U1333 ( .A(buffer_occ[3]), .Y(n1041) );
  OAI22X1 U1334 ( .A(n1098), .B(n1109), .C(n1081), .D(n1052), .Y(N545) );
  INVX1 U1335 ( .A(hrdata[26]), .Y(n1081) );
  INVX1 U1336 ( .A(buffer_occ[2]), .Y(n1098) );
  OAI22X1 U1337 ( .A(n1100), .B(n1109), .C(n1082), .D(n1052), .Y(N544) );
  INVX1 U1338 ( .A(hrdata[25]), .Y(n1082) );
  INVX1 U1339 ( .A(buffer_occ[1]), .Y(n1100) );
  OAI22X1 U1340 ( .A(n1039), .B(n1109), .C(n1083), .D(n1052), .Y(N543) );
  INVX1 U1341 ( .A(hrdata[24]), .Y(n1083) );
  INVX1 U1342 ( .A(buffer_occ[0]), .Y(n1039) );
  NOR2X1 U1343 ( .A(n1084), .B(n570), .Y(N542) );
  INVX1 U1344 ( .A(hrdata[23]), .Y(n1084) );
  NOR2X1 U1345 ( .A(n1085), .B(n570), .Y(N541) );
  INVX1 U1346 ( .A(hrdata[22]), .Y(n1085) );
  NOR2X1 U1347 ( .A(n1086), .B(n570), .Y(N540) );
  INVX1 U1348 ( .A(hrdata[21]), .Y(n1086) );
  NOR2X1 U1349 ( .A(n1087), .B(n570), .Y(N539) );
  INVX1 U1350 ( .A(hrdata[20]), .Y(n1087) );
  NOR2X1 U1351 ( .A(n1088), .B(n570), .Y(N538) );
  INVX1 U1352 ( .A(hrdata[19]), .Y(n1088) );
  NOR2X1 U1353 ( .A(n1089), .B(n570), .Y(N537) );
  INVX1 U1354 ( .A(hrdata[18]), .Y(n1089) );
  NOR2X1 U1355 ( .A(n1090), .B(n570), .Y(N536) );
  INVX1 U1356 ( .A(hrdata[17]), .Y(n1090) );
  OAI21X1 U1357 ( .A(n1091), .B(n1052), .C(n1015), .Y(N535) );
  NAND2X1 U1358 ( .A(tx_error), .B(n1110), .Y(n1015) );
  INVX1 U1359 ( .A(hrdata[16]), .Y(n1091) );
  NOR2X1 U1360 ( .A(n1092), .B(n570), .Y(N534) );
  NOR2X1 U1361 ( .A(n1093), .B(n570), .Y(N533) );
  NOR2X1 U1362 ( .A(n1094), .B(n570), .Y(N532) );
  NOR2X1 U1363 ( .A(n1095), .B(n570), .Y(N531) );
  NOR2X1 U1364 ( .A(n1096), .B(n570), .Y(N530) );
  NOR2X1 U1365 ( .A(n1097), .B(n570), .Y(N529) );
  NOR2X1 U1366 ( .A(n1099), .B(n570), .Y(N528) );
  OAI21X1 U1367 ( .A(n564), .B(n1111), .C(n1112), .Y(N527) );
  AOI21X1 U1368 ( .A(n1113), .B(hrdata[8]), .C(N516), .Y(n1112) );
  INVX1 U1369 ( .A(n1052), .Y(n1113) );
  NOR2X1 U1370 ( .A(n1102), .B(n570), .Y(N526) );
  INVX1 U1371 ( .A(hrdata[7]), .Y(n1102) );
  NOR2X1 U1372 ( .A(n1103), .B(n570), .Y(N525) );
  INVX1 U1373 ( .A(hrdata[6]), .Y(n1103) );
  NOR2X1 U1374 ( .A(n1104), .B(n570), .Y(N524) );
  INVX1 U1375 ( .A(hrdata[5]), .Y(n1104) );
  NOR2X1 U1376 ( .A(n1105), .B(n570), .Y(N523) );
  INVX1 U1377 ( .A(hrdata[4]), .Y(n1105) );
  NOR2X1 U1378 ( .A(n1106), .B(n570), .Y(N522) );
  INVX1 U1379 ( .A(hrdata[3]), .Y(n1106) );
  NOR2X1 U1380 ( .A(n1107), .B(n1052), .Y(N521) );
  INVX1 U1381 ( .A(hrdata[2]), .Y(n1107) );
  OAI22X1 U1382 ( .A(n1108), .B(n1052), .C(n1114), .D(n1017), .Y(N520) );
  INVX1 U1383 ( .A(hrdata[1]), .Y(n1108) );
  OAI22X1 U1384 ( .A(n1013), .B(n1052), .C(n1114), .D(n1115), .Y(N519) );
  NOR2X1 U1385 ( .A(n1012), .B(n1110), .Y(n1114) );
  NAND2X1 U1386 ( .A(hsize[0]), .B(hsize[1]), .Y(n1052) );
  INVX1 U1387 ( .A(hrdata[0]), .Y(n1013) );
  NOR2X1 U1388 ( .A(n1111), .B(n1109), .Y(N516) );
  INVX1 U1389 ( .A(rx_error), .Y(n1111) );
  NOR2X1 U1390 ( .A(n940), .B(n1017), .Y(N514) );
  NOR2X1 U1391 ( .A(n940), .B(n1115), .Y(N513) );
  OAI22X1 U1392 ( .A(n1116), .B(n566), .C(n1076), .D(n1118), .Y(N511) );
  OAI22X1 U1393 ( .A(n1119), .B(n566), .C(n1077), .D(n1118), .Y(N510) );
  OAI21X1 U1394 ( .A(n1120), .B(n566), .C(n1121), .Y(N509) );
  AOI22X1 U1395 ( .A(n1122), .B(n1217), .C(n574), .D(hrdata[29]), .Y(n1121) );
  INVX1 U1396 ( .A(buffer[29]), .Y(n1120) );
  OAI21X1 U1397 ( .A(n1123), .B(n566), .C(n1124), .Y(N508) );
  AOI22X1 U1398 ( .A(n1218), .B(n1122), .C(n574), .D(hrdata[28]), .Y(n1124) );
  INVX1 U1399 ( .A(buffer[28]), .Y(n1123) );
  OAI21X1 U1400 ( .A(n1125), .B(n566), .C(n1126), .Y(N507) );
  AOI22X1 U1401 ( .A(n1216), .B(n1122), .C(n574), .D(hrdata[27]), .Y(n1126) );
  INVX1 U1402 ( .A(buffer[27]), .Y(n1125) );
  OAI21X1 U1403 ( .A(n1127), .B(n566), .C(n1128), .Y(N506) );
  AOI22X1 U1404 ( .A(n1215), .B(n1122), .C(n574), .D(hrdata[26]), .Y(n1128) );
  INVX1 U1405 ( .A(buffer[26]), .Y(n1127) );
  OAI21X1 U1406 ( .A(n1129), .B(n566), .C(n1130), .Y(N505) );
  AOI22X1 U1407 ( .A(n1214), .B(n1122), .C(n574), .D(hrdata[25]), .Y(n1130) );
  INVX1 U1408 ( .A(buffer[25]), .Y(n1129) );
  NAND2X1 U1409 ( .A(n1131), .B(n1132), .Y(N504) );
  AOI22X1 U1410 ( .A(n574), .B(hrdata[24]), .C(n1133), .D(rx_error), .Y(n1132)
         );
  AOI22X1 U1411 ( .A(rx_data_ready), .B(n1122), .C(n1134), .D(buffer[24]), .Y(
        n1131) );
  INVX1 U1412 ( .A(n1117), .Y(n1134) );
  INVX1 U1413 ( .A(n1135), .Y(n1122) );
  OAI21X1 U1414 ( .A(n1136), .B(n566), .C(n1137), .Y(N503) );
  OAI21X1 U1415 ( .A(n1138), .B(n566), .C(n1139), .Y(N502) );
  OAI21X1 U1416 ( .A(n1140), .B(n1117), .C(n1141), .Y(N501) );
  OAI21X1 U1417 ( .A(n1142), .B(n1117), .C(n1143), .Y(N500) );
  OAI21X1 U1418 ( .A(n1144), .B(n1117), .C(n1145), .Y(N499) );
  OAI21X1 U1419 ( .A(n1146), .B(n1117), .C(n1147), .Y(N498) );
  OAI21X1 U1420 ( .A(n1148), .B(n1117), .C(n1149), .Y(N497) );
  AOI21X1 U1421 ( .A(tx_transfer_active), .B(n1150), .C(n1151), .Y(n1149) );
  OAI21X1 U1422 ( .A(n1152), .B(n1117), .C(n1153), .Y(N496) );
  AOI21X1 U1423 ( .A(rx_transfer_active), .B(n1150), .C(n1154), .Y(n1153) );
  OAI22X1 U1424 ( .A(n1155), .B(n566), .C(n1092), .D(n1118), .Y(N495) );
  OAI22X1 U1425 ( .A(n1156), .B(n566), .C(n1093), .D(n1118), .Y(N494) );
  OAI21X1 U1426 ( .A(n1157), .B(n1117), .C(n1158), .Y(N493) );
  AOI22X1 U1427 ( .A(n1217), .B(n1150), .C(n574), .D(hrdata[13]), .Y(n1158) );
  INVX1 U1428 ( .A(n1159), .Y(n1217) );
  OAI21X1 U1429 ( .A(n1160), .B(n1117), .C(n1161), .Y(N492) );
  AOI22X1 U1430 ( .A(n1218), .B(n1150), .C(n574), .D(hrdata[12]), .Y(n1161) );
  INVX1 U1431 ( .A(n1162), .Y(n1218) );
  OAI21X1 U1432 ( .A(n1163), .B(n1117), .C(n1164), .Y(N491) );
  AOI22X1 U1433 ( .A(n1216), .B(n1150), .C(n574), .D(hrdata[11]), .Y(n1164) );
  INVX1 U1434 ( .A(n1165), .Y(n1216) );
  OAI21X1 U1435 ( .A(n1166), .B(n1117), .C(n1167), .Y(N490) );
  AOI22X1 U1436 ( .A(n1215), .B(n1150), .C(n574), .D(hrdata[10]), .Y(n1167) );
  INVX1 U1437 ( .A(n1168), .Y(n1215) );
  OAI21X1 U1438 ( .A(n1169), .B(n1117), .C(n1170), .Y(N489) );
  AOI22X1 U1439 ( .A(n1214), .B(n1150), .C(n574), .D(hrdata[9]), .Y(n1170) );
  OAI21X1 U1440 ( .A(n1171), .B(n1117), .C(n1172), .Y(N488) );
  AOI22X1 U1441 ( .A(rx_data_ready), .B(n1150), .C(n574), .D(hrdata[8]), .Y(
        n1172) );
  NAND2X1 U1442 ( .A(n1135), .B(n1173), .Y(n1150) );
  OAI22X1 U1443 ( .A(n1174), .B(n1116), .C(n1076), .D(n1118), .Y(N473) );
  INVX1 U1444 ( .A(hrdata[31]), .Y(n1076) );
  INVX1 U1445 ( .A(buffer[31]), .Y(n1116) );
  OAI22X1 U1446 ( .A(n1174), .B(n1119), .C(n1077), .D(n1118), .Y(N472) );
  INVX1 U1447 ( .A(n1000), .Y(n1118) );
  INVX1 U1448 ( .A(hrdata[30]), .Y(n1077) );
  INVX1 U1449 ( .A(buffer[30]), .Y(n1119) );
  OAI21X1 U1450 ( .A(n1017), .B(n1173), .C(n1175), .Y(N467) );
  INVX1 U1451 ( .A(tx_transfer_active), .Y(n1017) );
  OAI21X1 U1452 ( .A(n1115), .B(n1173), .C(n1176), .Y(N466) );
  INVX1 U1453 ( .A(rx_transfer_active), .Y(n1115) );
  OAI21X1 U1454 ( .A(n1174), .B(n1136), .C(n1137), .Y(N465) );
  OAI21X1 U1455 ( .A(n1174), .B(n1138), .C(n1139), .Y(N464) );
  OAI21X1 U1456 ( .A(n1174), .B(n1140), .C(n1177), .Y(N463) );
  INVX1 U1457 ( .A(n1178), .Y(n1177) );
  OAI21X1 U1458 ( .A(n1173), .B(n1159), .C(n1141), .Y(n1178) );
  OAI21X1 U1459 ( .A(n1174), .B(n1142), .C(n1179), .Y(N462) );
  INVX1 U1460 ( .A(n1180), .Y(n1179) );
  OAI21X1 U1461 ( .A(n1173), .B(n1162), .C(n1143), .Y(n1180) );
  OAI21X1 U1462 ( .A(n1174), .B(n1144), .C(n1181), .Y(N461) );
  INVX1 U1463 ( .A(n1182), .Y(n1181) );
  OAI21X1 U1464 ( .A(n1173), .B(n1165), .C(n1145), .Y(n1182) );
  OAI21X1 U1465 ( .A(n1174), .B(n1146), .C(n1183), .Y(N460) );
  INVX1 U1466 ( .A(n1184), .Y(n1183) );
  OAI21X1 U1467 ( .A(n1173), .B(n1168), .C(n1147), .Y(n1184) );
  OAI21X1 U1468 ( .A(n1174), .B(n1148), .C(n1185), .Y(N459) );
  AOI21X1 U1469 ( .A(n1133), .B(n1214), .C(n1151), .Y(n1185) );
  INVX1 U1470 ( .A(n1186), .Y(n1151) );
  INVX1 U1471 ( .A(n1187), .Y(n1214) );
  OAI21X1 U1472 ( .A(n1174), .B(n1152), .C(n1188), .Y(N458) );
  AOI21X1 U1473 ( .A(rx_data_ready), .B(n1133), .C(n1154), .Y(n1188) );
  INVX1 U1474 ( .A(n1189), .Y(n1154) );
  INVX1 U1475 ( .A(n1190), .Y(n1174) );
  MUX2X1 U1476 ( .B(n1155), .A(n1092), .S(n574), .Y(N457) );
  INVX1 U1477 ( .A(hrdata[15]), .Y(n1092) );
  INVX1 U1478 ( .A(buffer[15]), .Y(n1155) );
  MUX2X1 U1479 ( .B(n1156), .A(n1093), .S(n574), .Y(N456) );
  INVX1 U1480 ( .A(hrdata[14]), .Y(n1093) );
  INVX1 U1481 ( .A(buffer[14]), .Y(n1156) );
  MUX2X1 U1482 ( .B(n1157), .A(n1094), .S(n574), .Y(N455) );
  INVX1 U1483 ( .A(hrdata[13]), .Y(n1094) );
  INVX1 U1484 ( .A(buffer[13]), .Y(n1157) );
  MUX2X1 U1485 ( .B(n1160), .A(n1095), .S(n1000), .Y(N454) );
  INVX1 U1486 ( .A(hrdata[12]), .Y(n1095) );
  INVX1 U1487 ( .A(buffer[12]), .Y(n1160) );
  MUX2X1 U1488 ( .B(n1163), .A(n1096), .S(n1000), .Y(N453) );
  INVX1 U1489 ( .A(hrdata[11]), .Y(n1096) );
  INVX1 U1490 ( .A(buffer[11]), .Y(n1163) );
  MUX2X1 U1491 ( .B(n1166), .A(n1097), .S(n1000), .Y(N452) );
  INVX1 U1492 ( .A(hrdata[10]), .Y(n1097) );
  INVX1 U1493 ( .A(buffer[10]), .Y(n1166) );
  MUX2X1 U1494 ( .B(n1169), .A(n1099), .S(n1000), .Y(N451) );
  INVX1 U1495 ( .A(hrdata[9]), .Y(n1099) );
  INVX1 U1496 ( .A(buffer[9]), .Y(n1169) );
  MUX2X1 U1497 ( .B(n1171), .A(n1101), .S(n1000), .Y(N450) );
  INVX1 U1498 ( .A(hrdata[8]), .Y(n1101) );
  INVX1 U1499 ( .A(buffer[8]), .Y(n1171) );
  OAI21X1 U1500 ( .A(n1159), .B(n1173), .C(n1011), .Y(N433) );
  AOI22X1 U1501 ( .A(n1190), .B(buffer[29]), .C(hrdata[29]), .D(n574), .Y(
        n1011) );
  NAND3X1 U1502 ( .A(rx_packet[0]), .B(n1191), .C(rx_packet[2]), .Y(n1159) );
  OAI21X1 U1503 ( .A(n1162), .B(n1173), .C(n1010), .Y(N432) );
  AOI22X1 U1504 ( .A(n1190), .B(buffer[28]), .C(hrdata[28]), .D(n574), .Y(
        n1010) );
  NAND3X1 U1505 ( .A(n1192), .B(n1191), .C(rx_packet[2]), .Y(n1162) );
  OAI21X1 U1506 ( .A(n1165), .B(n1173), .C(n1009), .Y(N431) );
  AOI22X1 U1507 ( .A(n1190), .B(buffer[27]), .C(hrdata[27]), .D(n574), .Y(
        n1009) );
  NAND3X1 U1508 ( .A(rx_packet[0]), .B(n1193), .C(rx_packet[1]), .Y(n1165) );
  OAI21X1 U1509 ( .A(n1168), .B(n1173), .C(n1008), .Y(N430) );
  AOI22X1 U1510 ( .A(n1190), .B(buffer[26]), .C(hrdata[26]), .D(n574), .Y(
        n1008) );
  NAND3X1 U1511 ( .A(n1192), .B(n1193), .C(rx_packet[1]), .Y(n1168) );
  INVX1 U1512 ( .A(rx_packet[0]), .Y(n1192) );
  OAI21X1 U1513 ( .A(n1187), .B(n1173), .C(n1175), .Y(N429) );
  AOI22X1 U1514 ( .A(n1190), .B(buffer[25]), .C(hrdata[25]), .D(n574), .Y(
        n1175) );
  NAND3X1 U1515 ( .A(n1191), .B(n1193), .C(rx_packet[0]), .Y(n1187) );
  INVX1 U1516 ( .A(rx_packet[2]), .Y(n1193) );
  INVX1 U1517 ( .A(rx_packet[1]), .Y(n1191) );
  OAI21X1 U1518 ( .A(n1173), .B(n1194), .C(n1176), .Y(N428) );
  AOI22X1 U1519 ( .A(n1190), .B(buffer[24]), .C(hrdata[24]), .D(n574), .Y(
        n1176) );
  INVX1 U1520 ( .A(rx_data_ready), .Y(n1194) );
  OAI21X1 U1521 ( .A(n574), .B(n1136), .C(n1137), .Y(N427) );
  NAND2X1 U1522 ( .A(n574), .B(hrdata[23]), .Y(n1137) );
  INVX1 U1523 ( .A(buffer[23]), .Y(n1136) );
  OAI21X1 U1524 ( .A(n574), .B(n1138), .C(n1139), .Y(N426) );
  NAND2X1 U1525 ( .A(n574), .B(hrdata[22]), .Y(n1139) );
  INVX1 U1526 ( .A(buffer[22]), .Y(n1138) );
  OAI21X1 U1527 ( .A(n574), .B(n1140), .C(n1141), .Y(N425) );
  NAND2X1 U1528 ( .A(n574), .B(hrdata[21]), .Y(n1141) );
  INVX1 U1529 ( .A(buffer[21]), .Y(n1140) );
  OAI21X1 U1530 ( .A(n574), .B(n1142), .C(n1143), .Y(N424) );
  NAND2X1 U1531 ( .A(n574), .B(hrdata[20]), .Y(n1143) );
  INVX1 U1532 ( .A(buffer[20]), .Y(n1142) );
  OAI21X1 U1533 ( .A(n574), .B(n1144), .C(n1145), .Y(N423) );
  NAND2X1 U1534 ( .A(n574), .B(hrdata[19]), .Y(n1145) );
  INVX1 U1535 ( .A(buffer[19]), .Y(n1144) );
  OAI21X1 U1536 ( .A(n574), .B(n1146), .C(n1147), .Y(N422) );
  NAND2X1 U1537 ( .A(n574), .B(hrdata[18]), .Y(n1147) );
  INVX1 U1538 ( .A(buffer[18]), .Y(n1146) );
  OAI21X1 U1539 ( .A(n574), .B(n1148), .C(n1186), .Y(N421) );
  NAND2X1 U1540 ( .A(n574), .B(hrdata[17]), .Y(n1186) );
  INVX1 U1541 ( .A(buffer[17]), .Y(n1148) );
  OAI21X1 U1542 ( .A(n574), .B(n1152), .C(n1189), .Y(N420) );
  NAND2X1 U1543 ( .A(n574), .B(hrdata[16]), .Y(n1189) );
  INVX1 U1544 ( .A(buffer[16]), .Y(n1152) );
  NOR2X1 U1545 ( .A(n1190), .B(n1133), .Y(n1000) );
  INVX1 U1546 ( .A(n1173), .Y(n1133) );
  NAND2X1 U1547 ( .A(n1110), .B(hr_avail), .Y(n1173) );
  INVX1 U1548 ( .A(n1109), .Y(n1110) );
  NAND2X1 U1549 ( .A(hsize[1]), .B(n1195), .Y(n1109) );
  NAND2X1 U1550 ( .A(n566), .B(n1135), .Y(n1190) );
  NAND2X1 U1551 ( .A(hr_avail), .B(n562), .Y(n1135) );
  NAND2X1 U1552 ( .A(hr_avail), .B(n940), .Y(n1117) );
  INVX1 U1553 ( .A(n931), .Y(n940) );
  NAND2X1 U1554 ( .A(n1195), .B(n1012), .Y(n931) );
  INVX1 U1555 ( .A(hsize[0]), .Y(n1195) );
endmodule

