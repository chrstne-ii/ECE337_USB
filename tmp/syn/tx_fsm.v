/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Fri Apr 17 16:25:17 2026
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
  wire   n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211;
  wire   [5:0] state;

  DFFSR \state_reg[0]  ( .D(n115), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[0]) );
  DFFSR \state_reg[1]  ( .D(n112), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[1]) );
  DFFSR \state_reg[3]  ( .D(n114), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[3]) );
  DFFSR \state_reg[2]  ( .D(n113), .CLK(clk), .R(n_rst), .S(1'b1), .Q(state[2]) );
  NAND3X1 U134 ( .A(n116), .B(n117), .C(n118), .Y(tx_transfer_active) );
  NOR2X1 U135 ( .A(n119), .B(n120), .Y(n118) );
  OR2X1 U136 ( .A(n121), .B(clear), .Y(n120) );
  NAND2X1 U137 ( .A(n122), .B(n123), .Y(packet[7]) );
  AOI22X1 U138 ( .A(pid_packet[7]), .B(n119), .C(tx_packet_data[7]), .D(
        get_tx_packet_data), .Y(n122) );
  NAND2X1 U139 ( .A(n124), .B(n123), .Y(packet[6]) );
  AOI22X1 U140 ( .A(pid_packet[6]), .B(n119), .C(tx_packet_data[6]), .D(
        get_tx_packet_data), .Y(n124) );
  NAND2X1 U141 ( .A(n125), .B(n123), .Y(packet[5]) );
  AOI22X1 U142 ( .A(pid_packet[5]), .B(n119), .C(tx_packet_data[5]), .D(
        get_tx_packet_data), .Y(n125) );
  NAND2X1 U143 ( .A(n126), .B(n123), .Y(packet[4]) );
  AOI22X1 U144 ( .A(pid_packet[4]), .B(n119), .C(tx_packet_data[4]), .D(
        get_tx_packet_data), .Y(n126) );
  NAND2X1 U145 ( .A(n127), .B(n123), .Y(packet[3]) );
  AOI22X1 U146 ( .A(pid_packet[3]), .B(n119), .C(tx_packet_data[3]), .D(
        get_tx_packet_data), .Y(n127) );
  NAND2X1 U147 ( .A(n128), .B(n123), .Y(packet[2]) );
  AOI22X1 U148 ( .A(pid_packet[2]), .B(n119), .C(tx_packet_data[2]), .D(
        get_tx_packet_data), .Y(n128) );
  NAND2X1 U149 ( .A(n129), .B(n123), .Y(packet[1]) );
  INVX1 U150 ( .A(n130), .Y(n123) );
  AOI22X1 U151 ( .A(pid_packet[1]), .B(n119), .C(tx_packet_data[1]), .D(
        get_tx_packet_data), .Y(n129) );
  NAND2X1 U152 ( .A(n131), .B(n132), .Y(packet[0]) );
  AOI21X1 U153 ( .A(pid_packet[0]), .B(n119), .C(n133), .Y(n132) );
  INVX1 U154 ( .A(n134), .Y(n119) );
  AOI21X1 U155 ( .A(tx_packet_data[0]), .B(get_tx_packet_data), .C(n130), .Y(
        n131) );
  NAND3X1 U156 ( .A(n116), .B(n135), .C(n136), .Y(n130) );
  OAI21X1 U157 ( .A(n137), .B(n138), .C(n139), .Y(n115) );
  OAI21X1 U158 ( .A(n138), .B(n140), .C(state[0]), .Y(n139) );
  OR2X1 U159 ( .A(n141), .B(tx_error), .Y(n140) );
  NOR2X1 U160 ( .A(n142), .B(n143), .Y(n137) );
  NAND2X1 U161 ( .A(n144), .B(n145), .Y(n143) );
  AOI22X1 U162 ( .A(n146), .B(n147), .C(n148), .D(n149), .Y(n144) );
  INVX1 U163 ( .A(n150), .Y(n142) );
  AOI21X1 U164 ( .A(n151), .B(n152), .C(n153), .Y(n150) );
  OAI22X1 U165 ( .A(n154), .B(n136), .C(n155), .D(n156), .Y(n153) );
  NOR2X1 U166 ( .A(idle), .B(tx_error), .Y(n136) );
  INVX1 U167 ( .A(n157), .Y(tx_error) );
  INVX1 U168 ( .A(n158), .Y(n154) );
  OAI21X1 U169 ( .A(n159), .B(n138), .C(n160), .Y(n114) );
  OAI21X1 U170 ( .A(n138), .B(n161), .C(state[3]), .Y(n160) );
  NOR2X1 U171 ( .A(n162), .B(n163), .Y(n159) );
  NAND2X1 U172 ( .A(n164), .B(n117), .Y(n163) );
  NAND2X1 U173 ( .A(n165), .B(n166), .Y(n162) );
  MUX2X1 U174 ( .B(n167), .A(n168), .S(n169), .Y(n113) );
  NOR2X1 U175 ( .A(n170), .B(n171), .Y(n168) );
  OR2X1 U176 ( .A(n172), .B(n141), .Y(n171) );
  OAI21X1 U177 ( .A(n151), .B(n173), .C(n174), .Y(n141) );
  AOI21X1 U178 ( .A(get_tx_packet_data), .B(n175), .C(n146), .Y(n174) );
  INVX1 U179 ( .A(n176), .Y(n146) );
  NAND2X1 U180 ( .A(n177), .B(n178), .Y(n151) );
  OAI22X1 U181 ( .A(n178), .B(n173), .C(n157), .D(n158), .Y(n172) );
  NAND3X1 U182 ( .A(n134), .B(n179), .C(n180), .Y(n170) );
  NOR2X1 U183 ( .A(end_packet), .B(n181), .Y(n180) );
  OAI21X1 U184 ( .A(n182), .B(n183), .C(n184), .Y(n112) );
  OAI21X1 U185 ( .A(n185), .B(n186), .C(n169), .Y(n184) );
  INVX1 U186 ( .A(n138), .Y(n169) );
  NAND3X1 U187 ( .A(n164), .B(n145), .C(n187), .Y(n186) );
  INVX1 U188 ( .A(n161), .Y(n187) );
  OAI22X1 U189 ( .A(n147), .B(n176), .C(n158), .D(n157), .Y(n161) );
  NAND2X1 U190 ( .A(n188), .B(n189), .Y(n157) );
  OAI21X1 U191 ( .A(n190), .B(n178), .C(n177), .Y(n158) );
  NAND3X1 U192 ( .A(tx_packet[0]), .B(n191), .C(tx_packet[1]), .Y(n178) );
  INVX1 U193 ( .A(tx_packet[2]), .Y(n191) );
  AOI21X1 U194 ( .A(get_tx_packet_data), .B(n190), .C(first), .Y(n145) );
  INVX1 U195 ( .A(n147), .Y(n190) );
  NAND3X1 U196 ( .A(n192), .B(n193), .C(n194), .Y(n147) );
  NOR2X1 U197 ( .A(buffer_occupancy[0]), .B(n195), .Y(n194) );
  OR2X1 U198 ( .A(buffer_occupancy[2]), .B(buffer_occupancy[1]), .Y(n195) );
  NOR2X1 U199 ( .A(buffer_occupancy[6]), .B(buffer_occupancy[5]), .Y(n193) );
  NOR2X1 U200 ( .A(buffer_occupancy[4]), .B(buffer_occupancy[3]), .Y(n192) );
  INVX1 U201 ( .A(n196), .Y(n164) );
  OAI21X1 U202 ( .A(n173), .B(n177), .C(n197), .Y(n196) );
  NAND2X1 U203 ( .A(tx_packet[1]), .B(n198), .Y(n177) );
  AOI21X1 U204 ( .A(n199), .B(tx_packet[2]), .C(tx_packet[0]), .Y(n198) );
  INVX1 U205 ( .A(tx_packet[3]), .Y(n199) );
  OAI21X1 U206 ( .A(n179), .B(n175), .C(n200), .Y(n185) );
  NOR2X1 U207 ( .A(n133), .B(n201), .Y(n200) );
  INVX1 U208 ( .A(n202), .Y(n201) );
  AND2X1 U209 ( .A(n121), .B(n203), .Y(n133) );
  AOI21X1 U210 ( .A(n148), .B(n149), .C(n138), .Y(n182) );
  OAI21X1 U211 ( .A(bit_clk), .B(n166), .C(n204), .Y(n138) );
  OAI21X1 U212 ( .A(n181), .B(n205), .C(n175), .Y(n204) );
  INVX1 U213 ( .A(rollover_8), .Y(n175) );
  AND2X1 U214 ( .A(n148), .B(n188), .Y(n181) );
  INVX1 U215 ( .A(n206), .Y(idle) );
  NAND3X1 U216 ( .A(n149), .B(n183), .C(n203), .Y(n206) );
  INVX1 U217 ( .A(n179), .Y(get_tx_packet_data) );
  INVX1 U218 ( .A(n207), .Y(first) );
  NAND3X1 U219 ( .A(n116), .B(n179), .C(n208), .Y(enable_timer) );
  INVX1 U220 ( .A(n205), .Y(n208) );
  NAND3X1 U221 ( .A(n117), .B(n134), .C(n197), .Y(n205) );
  NAND2X1 U222 ( .A(n148), .B(n121), .Y(n197) );
  INVX1 U223 ( .A(n165), .Y(n148) );
  NAND2X1 U224 ( .A(n188), .B(n203), .Y(n134) );
  NAND3X1 U225 ( .A(state[2]), .B(n156), .C(n188), .Y(n117) );
  NOR2X1 U226 ( .A(n149), .B(n183), .Y(n188) );
  NAND3X1 U227 ( .A(state[2]), .B(n156), .C(n121), .Y(n179) );
  NOR2X1 U228 ( .A(n209), .B(n210), .Y(n116) );
  OAI21X1 U229 ( .A(n121), .B(n165), .C(n173), .Y(n210) );
  INVX1 U230 ( .A(n152), .Y(n173) );
  NOR2X1 U231 ( .A(n155), .B(state[3]), .Y(n152) );
  NAND2X1 U232 ( .A(state[3]), .B(n167), .Y(n165) );
  NAND3X1 U233 ( .A(n176), .B(n166), .C(n207), .Y(n209) );
  NAND3X1 U234 ( .A(state[1]), .B(n149), .C(n203), .Y(n207) );
  NOR2X1 U235 ( .A(state[2]), .B(state[3]), .Y(n203) );
  INVX1 U236 ( .A(end_packet), .Y(n166) );
  OAI21X1 U237 ( .A(n156), .B(n155), .C(n202), .Y(end_packet) );
  NAND2X1 U238 ( .A(n121), .B(n189), .Y(n202) );
  NOR2X1 U239 ( .A(n149), .B(state[1]), .Y(n121) );
  NAND3X1 U240 ( .A(n149), .B(n183), .C(state[2]), .Y(n155) );
  INVX1 U241 ( .A(state[1]), .Y(n183) );
  NAND3X1 U242 ( .A(state[1]), .B(state[2]), .C(n211), .Y(n176) );
  NOR2X1 U243 ( .A(state[3]), .B(state[0]), .Y(n211) );
  INVX1 U244 ( .A(n135), .Y(clear) );
  NAND3X1 U245 ( .A(n189), .B(n149), .C(state[1]), .Y(n135) );
  INVX1 U246 ( .A(state[0]), .Y(n149) );
  NOR2X1 U247 ( .A(n156), .B(n167), .Y(n189) );
  INVX1 U248 ( .A(state[2]), .Y(n167) );
  INVX1 U249 ( .A(state[3]), .Y(n156) );
endmodule

