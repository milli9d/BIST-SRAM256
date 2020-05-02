/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP5-1
// Date      : Fri Dec 20 22:26:12 2019
/////////////////////////////////////////////////////////////


module chk_1 ( dat_out, addr_out, w_en_out, rst_done, clk, en_in, rev_in );
  output [3:0] dat_out;
  output [7:0] addr_out;
  input clk, en_in, rev_in;
  output w_en_out, rst_done;
  wire   N272, N273, N274, n118, n119, n120, n121, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340;
  wire   [31:0] i;

  DFFX1_RVT \w_data_reg[1]  ( .D(n170), .CLK(clk), .Q(dat_out[1]), .QN(n121)
         );
  DFFX1_RVT \w_data_reg[2]  ( .D(n169), .CLK(clk), .Q(dat_out[2]), .QN(n120)
         );
  DFFX1_RVT \w_data_reg[3]  ( .D(n168), .CLK(clk), .Q(dat_out[3]), .QN(n119)
         );
  DFFX1_RVT \w_data_reg[0]  ( .D(n167), .CLK(clk), .Q(dat_out[0]), .QN(n118)
         );
  DFFX1_RVT \w_addr_reg[0]  ( .D(n134), .CLK(clk), .Q(addr_out[0]), .QN(n340)
         );
  DFFX1_RVT \w_addr_reg[1]  ( .D(n133), .CLK(clk), .Q(addr_out[1]) );
  DFFX1_RVT \w_addr_reg[2]  ( .D(n132), .CLK(clk), .Q(addr_out[2]) );
  DFFX1_RVT \w_addr_reg[3]  ( .D(n131), .CLK(clk), .Q(addr_out[3]) );
  DFFX1_RVT \w_addr_reg[4]  ( .D(n130), .CLK(clk), .Q(addr_out[4]) );
  DFFX1_RVT \w_addr_reg[5]  ( .D(n129), .CLK(clk), .Q(addr_out[5]) );
  DFFX1_RVT \w_addr_reg[6]  ( .D(n128), .CLK(clk), .Q(addr_out[6]) );
  DFFX1_RVT \w_addr_reg[7]  ( .D(n127), .CLK(clk), .Q(addr_out[7]) );
  DFFX1_RVT w_en_reg ( .D(n126), .CLK(clk), .Q(w_en_out) );
  DFFX1_RVT rst_d_reg ( .D(n135), .CLK(clk), .Q(rst_done) );
  DFFX1_RVT \i_reg[1]  ( .D(n166), .CLK(clk), .Q(i[1]) );
  DFFX1_RVT \i_reg[2]  ( .D(n165), .CLK(clk), .Q(i[2]) );
  DFFX1_RVT \i_reg[3]  ( .D(n164), .CLK(clk), .Q(i[3]) );
  DFFX1_RVT \i_reg[4]  ( .D(n163), .CLK(clk), .Q(i[4]) );
  DFFX1_RVT \i_reg[5]  ( .D(n162), .CLK(clk), .Q(i[5]) );
  DFFX1_RVT \i_reg[6]  ( .D(n161), .CLK(clk), .Q(i[6]) );
  DFFX1_RVT \i_reg[7]  ( .D(n160), .CLK(clk), .Q(i[7]) );
  DFFX1_RVT \multiple_wait_state_reg[2]  ( .D(N274), .CLK(clk), .Q(n338), .QN(
        n174) );
  DFFX1_RVT \i_reg[8]  ( .D(n159), .CLK(clk), .Q(i[8]) );
  DFFX1_RVT \i_reg[9]  ( .D(n158), .CLK(clk), .Q(i[9]) );
  DFFX1_RVT \i_reg[10]  ( .D(n157), .CLK(clk), .Q(i[10]) );
  DFFX1_RVT \i_reg[11]  ( .D(n156), .CLK(clk), .Q(i[11]) );
  DFFX1_RVT \i_reg[12]  ( .D(n155), .CLK(clk), .Q(i[12]) );
  DFFX1_RVT \i_reg[13]  ( .D(n154), .CLK(clk), .Q(i[13]) );
  DFFX1_RVT \i_reg[14]  ( .D(n153), .CLK(clk), .Q(i[14]) );
  DFFX1_RVT \i_reg[15]  ( .D(n152), .CLK(clk), .Q(i[15]) );
  DFFX1_RVT \i_reg[16]  ( .D(n151), .CLK(clk), .Q(i[16]) );
  DFFX1_RVT \i_reg[17]  ( .D(n150), .CLK(clk), .Q(i[17]) );
  DFFX1_RVT \i_reg[18]  ( .D(n149), .CLK(clk), .Q(i[18]) );
  DFFX1_RVT \i_reg[19]  ( .D(n148), .CLK(clk), .Q(i[19]) );
  DFFX1_RVT \i_reg[20]  ( .D(n147), .CLK(clk), .Q(i[20]) );
  DFFX1_RVT \i_reg[21]  ( .D(n146), .CLK(clk), .Q(i[21]) );
  DFFX1_RVT \i_reg[22]  ( .D(n145), .CLK(clk), .Q(i[22]) );
  DFFX1_RVT \i_reg[23]  ( .D(n144), .CLK(clk), .Q(i[23]) );
  DFFX1_RVT \i_reg[24]  ( .D(n143), .CLK(clk), .Q(i[24]) );
  DFFX1_RVT \i_reg[25]  ( .D(n142), .CLK(clk), .Q(i[25]) );
  DFFX1_RVT \i_reg[26]  ( .D(n141), .CLK(clk), .Q(i[26]) );
  DFFX1_RVT \i_reg[27]  ( .D(n140), .CLK(clk), .Q(i[27]) );
  DFFX1_RVT \i_reg[28]  ( .D(n139), .CLK(clk), .Q(i[28]) );
  DFFX1_RVT \i_reg[29]  ( .D(n138), .CLK(clk), .Q(i[29]) );
  DFFX1_RVT \i_reg[30]  ( .D(n137), .CLK(clk), .Q(i[30]) );
  DFFX1_RVT \i_reg[31]  ( .D(n136), .CLK(clk), .Q(i[31]) );
  DFFX1_RVT \multiple_wait_state_reg[0]  ( .D(N272), .CLK(clk), .Q(n337), .QN(
        n172) );
  DFFX1_RVT \multiple_wait_state_reg[1]  ( .D(N273), .CLK(clk), .Q(n336), .QN(
        n173) );
  DFFX1_RVT \i_reg[0]  ( .D(n171), .CLK(clk), .Q(i[0]), .QN(n339) );
  XOR2X1_RVT U242 ( .A1(n291), .A2(i[31]), .Y(n299) );
  AND2X1_RVT U243 ( .A1(n333), .A2(n298), .Y(n296) );
  INVX1_RVT U244 ( .A(n333), .Y(n297) );
  INVX1_RVT U245 ( .A(n299), .Y(n332) );
  OA21X1_RVT U246 ( .A1(n334), .A2(n335), .A3(n333), .Y(n292) );
  NAND2X0_RVT U247 ( .A1(n174), .A2(n337), .Y(n334) );
  NAND2X0_RVT U248 ( .A1(n173), .A2(en_in), .Y(n335) );
  AND2X1_RVT U249 ( .A1(n172), .A2(n174), .Y(n330) );
  NAND2X0_RVT U250 ( .A1(n330), .A2(n336), .Y(n333) );
  AO22X1_RVT U251 ( .A1(i[0]), .A2(n292), .A3(n339), .A4(n297), .Y(n171) );
  OA21X1_RVT U252 ( .A1(n334), .A2(n336), .A3(n333), .Y(n254) );
  NOR3X0_RVT U253 ( .A1(rev_in), .A2(n334), .A3(n336), .Y(n252) );
  AO221X1_RVT U254 ( .A1(n121), .A2(n297), .A3(dat_out[1]), .A4(n254), .A5(
        n252), .Y(n170) );
  AND4X1_RVT U255 ( .A1(n174), .A2(n173), .A3(rev_in), .A4(n337), .Y(n253) );
  AO221X1_RVT U256 ( .A1(n120), .A2(n297), .A3(dat_out[2]), .A4(n254), .A5(
        n253), .Y(n169) );
  AO221X1_RVT U257 ( .A1(n119), .A2(n297), .A3(dat_out[3]), .A4(n254), .A5(
        n252), .Y(n168) );
  AO221X1_RVT U258 ( .A1(n118), .A2(n297), .A3(dat_out[0]), .A4(n254), .A5(
        n253), .Y(n167) );
  AO22X1_RVT U259 ( .A1(n297), .A2(n255), .A3(i[1]), .A4(n292), .Y(n166) );
  HADDX1_RVT U260 ( .A0(i[1]), .B0(i[0]), .C1(n257), .SO(n255) );
  AO22X1_RVT U261 ( .A1(n297), .A2(n256), .A3(i[2]), .A4(n292), .Y(n165) );
  HADDX1_RVT U262 ( .A0(i[2]), .B0(n257), .C1(n259), .SO(n256) );
  AO22X1_RVT U263 ( .A1(n297), .A2(n258), .A3(i[3]), .A4(n292), .Y(n164) );
  HADDX1_RVT U264 ( .A0(i[3]), .B0(n259), .C1(n261), .SO(n258) );
  AO22X1_RVT U265 ( .A1(n297), .A2(n260), .A3(i[4]), .A4(n292), .Y(n163) );
  HADDX1_RVT U266 ( .A0(i[4]), .B0(n261), .C1(n263), .SO(n260) );
  AO22X1_RVT U267 ( .A1(n297), .A2(n262), .A3(i[5]), .A4(n292), .Y(n162) );
  HADDX1_RVT U268 ( .A0(i[5]), .B0(n263), .C1(n265), .SO(n262) );
  AO22X1_RVT U269 ( .A1(n297), .A2(n264), .A3(i[6]), .A4(n292), .Y(n161) );
  HADDX1_RVT U270 ( .A0(i[6]), .B0(n265), .C1(n267), .SO(n264) );
  AO22X1_RVT U271 ( .A1(n297), .A2(n266), .A3(i[7]), .A4(n292), .Y(n160) );
  HADDX1_RVT U272 ( .A0(i[7]), .B0(n267), .C1(n268), .SO(n266) );
  AO22X1_RVT U273 ( .A1(n314), .A2(n297), .A3(i[8]), .A4(n292), .Y(n159) );
  HADDX1_RVT U274 ( .A0(i[8]), .B0(n268), .C1(n269), .SO(n314) );
  AO22X1_RVT U275 ( .A1(n304), .A2(n297), .A3(i[9]), .A4(n292), .Y(n158) );
  HADDX1_RVT U276 ( .A0(i[9]), .B0(n269), .C1(n270), .SO(n304) );
  AO22X1_RVT U277 ( .A1(n307), .A2(n297), .A3(i[10]), .A4(n292), .Y(n157) );
  HADDX1_RVT U278 ( .A0(i[10]), .B0(n270), .C1(n271), .SO(n307) );
  AO22X1_RVT U279 ( .A1(n305), .A2(n297), .A3(i[11]), .A4(n292), .Y(n156) );
  HADDX1_RVT U280 ( .A0(i[11]), .B0(n271), .C1(n272), .SO(n305) );
  AO22X1_RVT U281 ( .A1(n306), .A2(n297), .A3(i[12]), .A4(n292), .Y(n155) );
  HADDX1_RVT U282 ( .A0(i[12]), .B0(n272), .C1(n273), .SO(n306) );
  AO22X1_RVT U283 ( .A1(n302), .A2(n297), .A3(i[13]), .A4(n292), .Y(n154) );
  HADDX1_RVT U284 ( .A0(i[13]), .B0(n273), .C1(n274), .SO(n302) );
  AO22X1_RVT U285 ( .A1(n300), .A2(n297), .A3(i[14]), .A4(n292), .Y(n153) );
  HADDX1_RVT U286 ( .A0(i[14]), .B0(n274), .C1(n275), .SO(n300) );
  AO22X1_RVT U287 ( .A1(n301), .A2(n297), .A3(i[15]), .A4(n292), .Y(n152) );
  HADDX1_RVT U288 ( .A0(i[15]), .B0(n275), .C1(n276), .SO(n301) );
  AO22X1_RVT U289 ( .A1(n316), .A2(n297), .A3(i[16]), .A4(n292), .Y(n151) );
  HADDX1_RVT U290 ( .A0(i[16]), .B0(n276), .C1(n277), .SO(n316) );
  AO22X1_RVT U291 ( .A1(n303), .A2(n297), .A3(i[17]), .A4(n292), .Y(n150) );
  HADDX1_RVT U292 ( .A0(i[17]), .B0(n277), .C1(n278), .SO(n303) );
  AO22X1_RVT U293 ( .A1(n315), .A2(n297), .A3(i[18]), .A4(n292), .Y(n149) );
  HADDX1_RVT U294 ( .A0(i[18]), .B0(n278), .C1(n279), .SO(n315) );
  AO22X1_RVT U295 ( .A1(n319), .A2(n297), .A3(i[19]), .A4(n292), .Y(n148) );
  HADDX1_RVT U296 ( .A0(i[19]), .B0(n279), .C1(n280), .SO(n319) );
  AO22X1_RVT U297 ( .A1(n317), .A2(n297), .A3(i[20]), .A4(n292), .Y(n147) );
  HADDX1_RVT U298 ( .A0(i[20]), .B0(n280), .C1(n281), .SO(n317) );
  AO22X1_RVT U299 ( .A1(n318), .A2(n297), .A3(i[21]), .A4(n292), .Y(n146) );
  HADDX1_RVT U300 ( .A0(i[21]), .B0(n281), .C1(n282), .SO(n318) );
  AO22X1_RVT U301 ( .A1(n322), .A2(n297), .A3(i[22]), .A4(n292), .Y(n145) );
  HADDX1_RVT U302 ( .A0(i[22]), .B0(n282), .C1(n283), .SO(n322) );
  AO22X1_RVT U303 ( .A1(n320), .A2(n297), .A3(i[23]), .A4(n292), .Y(n144) );
  HADDX1_RVT U304 ( .A0(i[23]), .B0(n283), .C1(n284), .SO(n320) );
  AO22X1_RVT U305 ( .A1(n321), .A2(n297), .A3(i[24]), .A4(n292), .Y(n143) );
  HADDX1_RVT U306 ( .A0(i[24]), .B0(n284), .C1(n285), .SO(n321) );
  AO22X1_RVT U307 ( .A1(n310), .A2(n297), .A3(i[25]), .A4(n292), .Y(n142) );
  HADDX1_RVT U308 ( .A0(i[25]), .B0(n285), .C1(n286), .SO(n310) );
  AO22X1_RVT U309 ( .A1(n308), .A2(n297), .A3(i[26]), .A4(n292), .Y(n141) );
  HADDX1_RVT U310 ( .A0(i[26]), .B0(n286), .C1(n287), .SO(n308) );
  AO22X1_RVT U311 ( .A1(n309), .A2(n297), .A3(i[27]), .A4(n292), .Y(n140) );
  HADDX1_RVT U312 ( .A0(i[27]), .B0(n287), .C1(n288), .SO(n309) );
  AO22X1_RVT U313 ( .A1(n313), .A2(n297), .A3(i[28]), .A4(n292), .Y(n139) );
  HADDX1_RVT U314 ( .A0(i[28]), .B0(n288), .C1(n289), .SO(n313) );
  AO22X1_RVT U315 ( .A1(n311), .A2(n297), .A3(i[29]), .A4(n292), .Y(n138) );
  HADDX1_RVT U316 ( .A0(i[29]), .B0(n289), .C1(n290), .SO(n311) );
  AO22X1_RVT U317 ( .A1(n312), .A2(n297), .A3(i[30]), .A4(n292), .Y(n137) );
  HADDX1_RVT U318 ( .A0(i[30]), .B0(n290), .C1(n291), .SO(n312) );
  AO22X1_RVT U319 ( .A1(n299), .A2(n297), .A3(i[31]), .A4(n292), .Y(n136) );
  NAND4X0_RVT U320 ( .A1(addr_out[7]), .A2(addr_out[6]), .A3(addr_out[5]), 
        .A4(n336), .Y(n294) );
  NAND4X0_RVT U321 ( .A1(addr_out[4]), .A2(addr_out[3]), .A3(addr_out[2]), 
        .A4(addr_out[1]), .Y(n293) );
  NOR4X1_RVT U322 ( .A1(n334), .A2(n340), .A3(n294), .A4(n293), .Y(n295) );
  AO21X1_RVT U323 ( .A1(rst_done), .A2(n174), .A3(n295), .Y(n135) );
  NAND2X0_RVT U324 ( .A1(rst_done), .A2(n338), .Y(n298) );
  AO22X1_RVT U325 ( .A1(i[0]), .A2(n297), .A3(addr_out[0]), .A4(n296), .Y(n134) );
  AO22X1_RVT U326 ( .A1(n297), .A2(i[1]), .A3(addr_out[1]), .A4(n296), .Y(n133) );
  AO22X1_RVT U327 ( .A1(n297), .A2(i[2]), .A3(addr_out[2]), .A4(n296), .Y(n132) );
  AO22X1_RVT U328 ( .A1(n297), .A2(i[3]), .A3(addr_out[3]), .A4(n296), .Y(n131) );
  AO22X1_RVT U329 ( .A1(n297), .A2(i[4]), .A3(addr_out[4]), .A4(n296), .Y(n130) );
  AO22X1_RVT U330 ( .A1(n297), .A2(i[5]), .A3(addr_out[5]), .A4(n296), .Y(n129) );
  AO22X1_RVT U331 ( .A1(n297), .A2(i[6]), .A3(addr_out[6]), .A4(n296), .Y(n128) );
  AO22X1_RVT U332 ( .A1(n297), .A2(i[7]), .A3(addr_out[7]), .A4(n296), .Y(n127) );
  AO21X1_RVT U333 ( .A1(w_en_out), .A2(n298), .A3(n297), .Y(n126) );
  AND3X1_RVT U334 ( .A1(n174), .A2(n337), .A3(n335), .Y(N274) );
  NOR4X1_RVT U335 ( .A1(n303), .A2(n302), .A3(n301), .A4(n300), .Y(n329) );
  NOR4X1_RVT U336 ( .A1(n307), .A2(n306), .A3(n305), .A4(n304), .Y(n328) );
  NOR4X1_RVT U337 ( .A1(n311), .A2(n310), .A3(n309), .A4(n308), .Y(n326) );
  NOR3X0_RVT U338 ( .A1(n314), .A2(n313), .A3(n312), .Y(n325) );
  NOR4X1_RVT U339 ( .A1(n318), .A2(n317), .A3(n316), .A4(n315), .Y(n324) );
  NOR4X1_RVT U340 ( .A1(n322), .A2(n321), .A3(n320), .A4(n319), .Y(n323) );
  AND4X1_RVT U341 ( .A1(n326), .A2(n325), .A3(n324), .A4(n323), .Y(n327) );
  NAND3X0_RVT U342 ( .A1(n329), .A2(n328), .A3(n327), .Y(n331) );
  OA221X1_RVT U343 ( .A1(n173), .A2(n332), .A3(n173), .A4(n331), .A5(n330), 
        .Y(N272) );
  AOI22X1_RVT U344 ( .A1(n337), .A2(n335), .A3(n334), .A4(n333), .Y(N273) );
endmodule

