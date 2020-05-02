/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP5-1
// Date      : Fri Dec 20 21:29:29 2019
/////////////////////////////////////////////////////////////


module blanket_0 ( dat_out, addr_out, w_en_out, rst_done, clk, en_in, rev_in
 );
  output [3:0] dat_out;
  output [7:0] addr_out;
  input clk, en_in, rev_in;
  output w_en_out, rst_done;
  wire   N192, N193, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n161, n196, n197, n226, n227, n228, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365;
  wire   [31:0] i;

  DFFX1_RVT \w_addr_reg[0]  ( .D(n121), .CLK(clk), .Q(addr_out[0]) );
  DFFX1_RVT \w_addr_reg[1]  ( .D(n120), .CLK(clk), .Q(addr_out[1]) );
  DFFX1_RVT \w_addr_reg[2]  ( .D(n119), .CLK(clk), .Q(addr_out[2]) );
  DFFX1_RVT \w_addr_reg[3]  ( .D(n118), .CLK(clk), .Q(addr_out[3]) );
  DFFX1_RVT \w_addr_reg[4]  ( .D(n117), .CLK(clk), .Q(addr_out[4]) );
  DFFX1_RVT \w_addr_reg[5]  ( .D(n116), .CLK(clk), .Q(addr_out[5]) );
  DFFX1_RVT \w_addr_reg[6]  ( .D(n115), .CLK(clk), .Q(addr_out[6]) );
  DFFX1_RVT \w_addr_reg[7]  ( .D(n114), .CLK(clk), .Q(addr_out[7]) );
  DFFX1_RVT \w_data_reg[0]  ( .D(n157), .CLK(clk), .Q(dat_out[0]) );
  DFFX1_RVT \w_data_reg[3]  ( .D(n125), .CLK(clk), .Q(dat_out[3]) );
  DFFX1_RVT \w_data_reg[2]  ( .D(n124), .CLK(clk), .Q(dat_out[2]) );
  DFFX1_RVT \w_data_reg[1]  ( .D(n123), .CLK(clk), .Q(dat_out[1]) );
  DFFX1_RVT w_en_reg ( .D(n113), .CLK(clk), .Q(w_en_out) );
  DFFX1_RVT rst_d_reg ( .D(n122), .CLK(clk), .Q(rst_done) );
  DFFX1_RVT \i_reg[1]  ( .D(n156), .CLK(clk), .Q(i[1]), .QN(n362) );
  DFFX1_RVT \i_reg[2]  ( .D(n155), .CLK(clk), .Q(i[2]), .QN(n363) );
  DFFX1_RVT \i_reg[3]  ( .D(n154), .CLK(clk), .Q(i[3]), .QN(n360) );
  DFFX1_RVT \i_reg[4]  ( .D(n153), .CLK(clk), .Q(i[4]), .QN(n364) );
  DFFX1_RVT \i_reg[5]  ( .D(n152), .CLK(clk), .Q(i[5]), .QN(n361) );
  DFFX1_RVT \i_reg[6]  ( .D(n151), .CLK(clk), .Q(i[6]), .QN(n365) );
  DFFX1_RVT \i_reg[7]  ( .D(n150), .CLK(clk), .Q(i[7]) );
  DFFX1_RVT \multiple_wait_state_reg[2]  ( .D(n226), .CLK(clk), .Q(n357), .QN(
        n161) );
  DFFX1_RVT \i_reg[8]  ( .D(n149), .CLK(clk), .Q(i[8]) );
  DFFX1_RVT \i_reg[9]  ( .D(n148), .CLK(clk), .Q(i[9]) );
  DFFX1_RVT \i_reg[10]  ( .D(n147), .CLK(clk), .Q(i[10]) );
  DFFX1_RVT \i_reg[11]  ( .D(n146), .CLK(clk), .Q(i[11]) );
  DFFX1_RVT \i_reg[12]  ( .D(n145), .CLK(clk), .Q(i[12]) );
  DFFX1_RVT \i_reg[13]  ( .D(n144), .CLK(clk), .Q(i[13]) );
  DFFX1_RVT \i_reg[14]  ( .D(n143), .CLK(clk), .Q(i[14]) );
  DFFX1_RVT \i_reg[15]  ( .D(n142), .CLK(clk), .Q(i[15]) );
  DFFX1_RVT \i_reg[16]  ( .D(n141), .CLK(clk), .Q(i[16]) );
  DFFX1_RVT \i_reg[17]  ( .D(n140), .CLK(clk), .Q(i[17]) );
  DFFX1_RVT \i_reg[18]  ( .D(n139), .CLK(clk), .Q(i[18]) );
  DFFX1_RVT \i_reg[19]  ( .D(n138), .CLK(clk), .Q(i[19]) );
  DFFX1_RVT \i_reg[20]  ( .D(n137), .CLK(clk), .Q(i[20]) );
  DFFX1_RVT \i_reg[21]  ( .D(n136), .CLK(clk), .Q(i[21]) );
  DFFX1_RVT \i_reg[22]  ( .D(n135), .CLK(clk), .Q(i[22]) );
  DFFX1_RVT \i_reg[23]  ( .D(n134), .CLK(clk), .Q(i[23]) );
  DFFX1_RVT \i_reg[24]  ( .D(n133), .CLK(clk), .Q(i[24]) );
  DFFX1_RVT \i_reg[25]  ( .D(n132), .CLK(clk), .Q(i[25]) );
  DFFX1_RVT \i_reg[26]  ( .D(n131), .CLK(clk), .Q(i[26]) );
  DFFX1_RVT \i_reg[27]  ( .D(n130), .CLK(clk), .Q(i[27]) );
  DFFX1_RVT \i_reg[28]  ( .D(n129), .CLK(clk), .Q(i[28]) );
  DFFX1_RVT \i_reg[29]  ( .D(n128), .CLK(clk), .Q(i[29]) );
  DFFX1_RVT \i_reg[30]  ( .D(n127), .CLK(clk), .Q(i[30]) );
  DFFX1_RVT \i_reg[31]  ( .D(n126), .CLK(clk), .Q(i[31]) );
  DFFX1_RVT \i_reg[0]  ( .D(n158), .CLK(clk), .Q(i[0]), .QN(n358) );
  DFFX1_RVT \multiple_wait_state_reg[0]  ( .D(N192), .CLK(clk), .Q(n197), .QN(
        n359) );
  DFFX1_RVT \multiple_wait_state_reg[1]  ( .D(N193), .CLK(clk), .Q(n196), .QN(
        n356) );
  INVX1_RVT U226 ( .A(n228), .Y(n226) );
  NAND2X0_RVT U227 ( .A1(en_in), .A2(n356), .Y(n227) );
  NAND3X0_RVT U228 ( .A1(n161), .A2(n197), .A3(n227), .Y(n228) );
  OA221X1_RVT U230 ( .A1(1'b0), .A2(n161), .A3(n197), .A4(n196), .A5(n228), 
        .Y(N193) );
  NAND3X0_RVT U231 ( .A1(i[2]), .A2(i[1]), .A3(i[0]), .Y(n289) );
  INVX1_RVT U232 ( .A(n289), .Y(n291) );
  NAND3X0_RVT U233 ( .A1(i[4]), .A2(i[3]), .A3(n291), .Y(n293) );
  INVX1_RVT U234 ( .A(n293), .Y(n295) );
  AND3X1_RVT U235 ( .A1(i[6]), .A2(i[5]), .A3(n295), .Y(n296) );
  NAND3X0_RVT U236 ( .A1(i[7]), .A2(n296), .A3(i[8]), .Y(n255) );
  INVX1_RVT U237 ( .A(n255), .Y(n230) );
  NAND2X0_RVT U238 ( .A1(n230), .A2(i[9]), .Y(n254) );
  INVX1_RVT U239 ( .A(n254), .Y(n231) );
  NAND2X0_RVT U240 ( .A1(n231), .A2(i[10]), .Y(n253) );
  INVX1_RVT U241 ( .A(n253), .Y(n232) );
  AND2X1_RVT U242 ( .A1(n232), .A2(i[11]), .Y(n252) );
  NAND2X0_RVT U243 ( .A1(n252), .A2(i[12]), .Y(n259) );
  INVX1_RVT U244 ( .A(n259), .Y(n233) );
  NAND2X0_RVT U245 ( .A1(n233), .A2(i[13]), .Y(n258) );
  INVX1_RVT U246 ( .A(n258), .Y(n234) );
  NAND2X0_RVT U247 ( .A1(n234), .A2(i[14]), .Y(n257) );
  INVX1_RVT U248 ( .A(n257), .Y(n235) );
  NAND2X0_RVT U249 ( .A1(n235), .A2(i[15]), .Y(n262) );
  INVX1_RVT U250 ( .A(n262), .Y(n236) );
  NAND2X0_RVT U251 ( .A1(n236), .A2(i[16]), .Y(n261) );
  INVX1_RVT U252 ( .A(n261), .Y(n237) );
  NAND2X0_RVT U253 ( .A1(n237), .A2(i[17]), .Y(n260) );
  INVX1_RVT U254 ( .A(n260), .Y(n238) );
  NAND2X0_RVT U255 ( .A1(n238), .A2(i[18]), .Y(n268) );
  INVX1_RVT U256 ( .A(n268), .Y(n239) );
  NAND2X0_RVT U257 ( .A1(n239), .A2(i[19]), .Y(n267) );
  INVX1_RVT U258 ( .A(n267), .Y(n240) );
  NAND2X0_RVT U259 ( .A1(n240), .A2(i[20]), .Y(n266) );
  INVX1_RVT U260 ( .A(n266), .Y(n241) );
  NAND2X0_RVT U261 ( .A1(n241), .A2(i[21]), .Y(n272) );
  INVX1_RVT U262 ( .A(n272), .Y(n242) );
  NAND2X0_RVT U263 ( .A1(n242), .A2(i[22]), .Y(n271) );
  INVX1_RVT U264 ( .A(n271), .Y(n243) );
  NAND2X0_RVT U265 ( .A1(n243), .A2(i[23]), .Y(n270) );
  INVX1_RVT U266 ( .A(n270), .Y(n244) );
  NAND2X0_RVT U267 ( .A1(n244), .A2(i[24]), .Y(n276) );
  INVX1_RVT U268 ( .A(n276), .Y(n245) );
  NAND2X0_RVT U269 ( .A1(n245), .A2(i[25]), .Y(n275) );
  INVX1_RVT U270 ( .A(n275), .Y(n246) );
  NAND2X0_RVT U271 ( .A1(n246), .A2(i[26]), .Y(n274) );
  INVX1_RVT U272 ( .A(n274), .Y(n247) );
  NAND2X0_RVT U273 ( .A1(n247), .A2(i[27]), .Y(n280) );
  INVX1_RVT U274 ( .A(n280), .Y(n248) );
  NAND2X0_RVT U275 ( .A1(n248), .A2(i[28]), .Y(n279) );
  INVX1_RVT U276 ( .A(n279), .Y(n249) );
  NAND2X0_RVT U277 ( .A1(n249), .A2(i[29]), .Y(n278) );
  INVX1_RVT U278 ( .A(n278), .Y(n250) );
  NAND2X0_RVT U279 ( .A1(n250), .A2(i[30]), .Y(n251) );
  HADDX1_RVT U280 ( .A0(i[31]), .B0(n251), .SO(n343) );
  HADDX1_RVT U281 ( .A0(n252), .B0(i[12]), .SO(n306) );
  HADDX1_RVT U282 ( .A0(i[11]), .B0(n253), .SO(n304) );
  HADDX1_RVT U283 ( .A0(i[10]), .B0(n254), .SO(n302) );
  HADDX1_RVT U284 ( .A0(i[9]), .B0(n255), .SO(n300) );
  NAND2X0_RVT U285 ( .A1(i[7]), .A2(n296), .Y(n256) );
  HADDX1_RVT U286 ( .A0(i[8]), .B0(n256), .SO(n298) );
  NAND4X0_RVT U287 ( .A1(n304), .A2(n302), .A3(n300), .A4(n298), .Y(n265) );
  HADDX1_RVT U288 ( .A0(i[15]), .B0(n257), .SO(n311) );
  HADDX1_RVT U289 ( .A0(i[14]), .B0(n258), .SO(n309) );
  HADDX1_RVT U290 ( .A0(i[13]), .B0(n259), .SO(n307) );
  NAND3X0_RVT U291 ( .A1(n311), .A2(n309), .A3(n307), .Y(n264) );
  HADDX1_RVT U292 ( .A0(i[18]), .B0(n260), .SO(n317) );
  HADDX1_RVT U293 ( .A0(i[17]), .B0(n261), .SO(n315) );
  HADDX1_RVT U294 ( .A0(i[16]), .B0(n262), .SO(n313) );
  NAND3X0_RVT U295 ( .A1(n317), .A2(n315), .A3(n313), .Y(n263) );
  NOR4X1_RVT U296 ( .A1(n306), .A2(n265), .A3(n264), .A4(n263), .Y(n269) );
  HADDX1_RVT U297 ( .A0(i[21]), .B0(n266), .SO(n323) );
  HADDX1_RVT U298 ( .A0(i[20]), .B0(n267), .SO(n321) );
  HADDX1_RVT U299 ( .A0(i[19]), .B0(n268), .SO(n319) );
  AND4X1_RVT U300 ( .A1(n269), .A2(n323), .A3(n321), .A4(n319), .Y(n273) );
  HADDX1_RVT U301 ( .A0(i[24]), .B0(n270), .SO(n329) );
  HADDX1_RVT U302 ( .A0(i[23]), .B0(n271), .SO(n327) );
  HADDX1_RVT U303 ( .A0(i[22]), .B0(n272), .SO(n325) );
  AND4X1_RVT U304 ( .A1(n273), .A2(n329), .A3(n327), .A4(n325), .Y(n277) );
  HADDX1_RVT U305 ( .A0(i[27]), .B0(n274), .SO(n335) );
  HADDX1_RVT U306 ( .A0(i[26]), .B0(n275), .SO(n333) );
  HADDX1_RVT U307 ( .A0(i[25]), .B0(n276), .SO(n331) );
  AND4X1_RVT U308 ( .A1(n277), .A2(n335), .A3(n333), .A4(n331), .Y(n281) );
  HADDX1_RVT U309 ( .A0(i[30]), .B0(n278), .SO(n341) );
  HADDX1_RVT U310 ( .A0(i[29]), .B0(n279), .SO(n339) );
  HADDX1_RVT U311 ( .A0(i[28]), .B0(n280), .SO(n337) );
  NAND4X0_RVT U312 ( .A1(n281), .A2(n341), .A3(n339), .A4(n337), .Y(n282) );
  AND2X1_RVT U313 ( .A1(n161), .A2(n359), .Y(n283) );
  OA221X1_RVT U314 ( .A1(n356), .A2(n343), .A3(n356), .A4(n282), .A5(n283), 
        .Y(N192) );
  AOI221X1_RVT U315 ( .A1(n197), .A2(n196), .A3(n359), .A4(n356), .A5(n357), 
        .Y(n285) );
  INVX1_RVT U316 ( .A(n285), .Y(n345) );
  AND2X1_RVT U317 ( .A1(n283), .A2(n196), .Y(n354) );
  AO22X1_RVT U318 ( .A1(i[0]), .A2(n345), .A3(n358), .A4(n354), .Y(n158) );
  NAND3X0_RVT U319 ( .A1(n161), .A2(n197), .A3(n356), .Y(n346) );
  INVX1_RVT U320 ( .A(n346), .Y(n347) );
  AO22X1_RVT U321 ( .A1(n347), .A2(rev_in), .A3(n346), .A4(dat_out[0]), .Y(
        n157) );
  NAND2X0_RVT U322 ( .A1(n354), .A2(n358), .Y(n284) );
  NAND2X0_RVT U323 ( .A1(n285), .A2(n284), .Y(n286) );
  AND2X1_RVT U324 ( .A1(i[0]), .A2(n354), .Y(n351) );
  AO22X1_RVT U325 ( .A1(i[1]), .A2(n286), .A3(n362), .A4(n351), .Y(n156) );
  AO221X1_RVT U326 ( .A1(n354), .A2(n358), .A3(n354), .A4(n362), .A5(n345), 
        .Y(n287) );
  OA222X1_RVT U327 ( .A1(i[2]), .A2(i[1]), .A3(i[2]), .A4(n351), .A5(n363), 
        .A6(n287), .Y(n155) );
  AO21X1_RVT U328 ( .A1(n354), .A2(n289), .A3(n345), .Y(n288) );
  OA222X1_RVT U329 ( .A1(i[3]), .A2(n291), .A3(i[3]), .A4(n354), .A5(n360), 
        .A6(n288), .Y(n154) );
  AND2X1_RVT U330 ( .A1(i[3]), .A2(n354), .Y(n352) );
  AO221X1_RVT U331 ( .A1(n354), .A2(n289), .A3(n354), .A4(n360), .A5(n345), 
        .Y(n290) );
  OA222X1_RVT U332 ( .A1(i[4]), .A2(n291), .A3(i[4]), .A4(n352), .A5(n364), 
        .A6(n290), .Y(n153) );
  AO21X1_RVT U333 ( .A1(n354), .A2(n293), .A3(n345), .Y(n292) );
  OA222X1_RVT U334 ( .A1(i[5]), .A2(n295), .A3(i[5]), .A4(n354), .A5(n361), 
        .A6(n292), .Y(n152) );
  AND2X1_RVT U335 ( .A1(i[5]), .A2(n354), .Y(n353) );
  AO221X1_RVT U336 ( .A1(n354), .A2(n293), .A3(n354), .A4(n361), .A5(n345), 
        .Y(n294) );
  OA222X1_RVT U337 ( .A1(i[6]), .A2(n295), .A3(i[6]), .A4(n353), .A5(n365), 
        .A6(n294), .Y(n151) );
  HADDX1_RVT U338 ( .A0(i[7]), .B0(n296), .SO(n297) );
  AO22X1_RVT U339 ( .A1(i[7]), .A2(n345), .A3(n354), .A4(n297), .Y(n150) );
  INVX1_RVT U340 ( .A(n298), .Y(n299) );
  AO22X1_RVT U341 ( .A1(i[8]), .A2(n345), .A3(n299), .A4(n354), .Y(n149) );
  INVX1_RVT U342 ( .A(n300), .Y(n301) );
  AO22X1_RVT U343 ( .A1(i[9]), .A2(n345), .A3(n301), .A4(n354), .Y(n148) );
  INVX1_RVT U344 ( .A(n302), .Y(n303) );
  AO22X1_RVT U345 ( .A1(i[10]), .A2(n345), .A3(n303), .A4(n354), .Y(n147) );
  INVX1_RVT U346 ( .A(n304), .Y(n305) );
  AO22X1_RVT U347 ( .A1(i[11]), .A2(n345), .A3(n305), .A4(n354), .Y(n146) );
  AO22X1_RVT U348 ( .A1(i[12]), .A2(n345), .A3(n306), .A4(n354), .Y(n145) );
  INVX1_RVT U349 ( .A(n307), .Y(n308) );
  AO22X1_RVT U350 ( .A1(i[13]), .A2(n345), .A3(n308), .A4(n354), .Y(n144) );
  INVX1_RVT U351 ( .A(n309), .Y(n310) );
  AO22X1_RVT U352 ( .A1(i[14]), .A2(n345), .A3(n310), .A4(n354), .Y(n143) );
  INVX1_RVT U353 ( .A(n311), .Y(n312) );
  AO22X1_RVT U354 ( .A1(i[15]), .A2(n345), .A3(n312), .A4(n354), .Y(n142) );
  INVX1_RVT U355 ( .A(n313), .Y(n314) );
  AO22X1_RVT U356 ( .A1(i[16]), .A2(n345), .A3(n314), .A4(n354), .Y(n141) );
  INVX1_RVT U357 ( .A(n315), .Y(n316) );
  AO22X1_RVT U358 ( .A1(i[17]), .A2(n345), .A3(n316), .A4(n354), .Y(n140) );
  INVX1_RVT U359 ( .A(n317), .Y(n318) );
  AO22X1_RVT U360 ( .A1(i[18]), .A2(n345), .A3(n318), .A4(n354), .Y(n139) );
  INVX1_RVT U361 ( .A(n319), .Y(n320) );
  AO22X1_RVT U362 ( .A1(i[19]), .A2(n345), .A3(n320), .A4(n354), .Y(n138) );
  INVX1_RVT U363 ( .A(n321), .Y(n322) );
  AO22X1_RVT U364 ( .A1(i[20]), .A2(n345), .A3(n322), .A4(n354), .Y(n137) );
  INVX1_RVT U365 ( .A(n323), .Y(n324) );
  AO22X1_RVT U366 ( .A1(i[21]), .A2(n345), .A3(n324), .A4(n354), .Y(n136) );
  INVX1_RVT U367 ( .A(n325), .Y(n326) );
  AO22X1_RVT U368 ( .A1(i[22]), .A2(n345), .A3(n326), .A4(n354), .Y(n135) );
  INVX1_RVT U369 ( .A(n327), .Y(n328) );
  AO22X1_RVT U370 ( .A1(i[23]), .A2(n345), .A3(n328), .A4(n354), .Y(n134) );
  INVX1_RVT U371 ( .A(n329), .Y(n330) );
  AO22X1_RVT U372 ( .A1(i[24]), .A2(n345), .A3(n330), .A4(n354), .Y(n133) );
  INVX1_RVT U373 ( .A(n331), .Y(n332) );
  AO22X1_RVT U374 ( .A1(i[25]), .A2(n345), .A3(n332), .A4(n354), .Y(n132) );
  INVX1_RVT U375 ( .A(n333), .Y(n334) );
  AO22X1_RVT U376 ( .A1(i[26]), .A2(n345), .A3(n334), .A4(n354), .Y(n131) );
  INVX1_RVT U377 ( .A(n335), .Y(n336) );
  AO22X1_RVT U378 ( .A1(i[27]), .A2(n345), .A3(n336), .A4(n354), .Y(n130) );
  INVX1_RVT U379 ( .A(n337), .Y(n338) );
  AO22X1_RVT U380 ( .A1(i[28]), .A2(n345), .A3(n338), .A4(n354), .Y(n129) );
  INVX1_RVT U381 ( .A(n339), .Y(n340) );
  AO22X1_RVT U382 ( .A1(i[29]), .A2(n345), .A3(n340), .A4(n354), .Y(n128) );
  INVX1_RVT U383 ( .A(n341), .Y(n342) );
  AO22X1_RVT U384 ( .A1(i[30]), .A2(n345), .A3(n342), .A4(n354), .Y(n127) );
  INVX1_RVT U385 ( .A(n343), .Y(n344) );
  AO22X1_RVT U386 ( .A1(i[31]), .A2(n345), .A3(n344), .A4(n354), .Y(n126) );
  AO22X1_RVT U387 ( .A1(n347), .A2(rev_in), .A3(n346), .A4(dat_out[3]), .Y(
        n125) );
  AO22X1_RVT U388 ( .A1(n347), .A2(rev_in), .A3(n346), .A4(dat_out[2]), .Y(
        n124) );
  AO22X1_RVT U389 ( .A1(n347), .A2(rev_in), .A3(n346), .A4(dat_out[1]), .Y(
        n123) );
  AND4X1_RVT U390 ( .A1(n197), .A2(n196), .A3(addr_out[7]), .A4(addr_out[6]), 
        .Y(n349) );
  AND4X1_RVT U391 ( .A1(addr_out[3]), .A2(addr_out[2]), .A3(addr_out[1]), .A4(
        addr_out[0]), .Y(n348) );
  AND4X1_RVT U392 ( .A1(addr_out[5]), .A2(addr_out[4]), .A3(n349), .A4(n348), 
        .Y(n350) );
  OA21X1_RVT U393 ( .A1(rst_done), .A2(n350), .A3(n161), .Y(n122) );
  AOI21X1_RVT U394 ( .A1(n357), .A2(rst_done), .A3(n354), .Y(n355) );
  AO21X1_RVT U395 ( .A1(addr_out[0]), .A2(n355), .A3(n351), .Y(n121) );
  AO22X1_RVT U396 ( .A1(i[1]), .A2(n354), .A3(addr_out[1]), .A4(n355), .Y(n120) );
  AO22X1_RVT U397 ( .A1(i[2]), .A2(n354), .A3(addr_out[2]), .A4(n355), .Y(n119) );
  AO21X1_RVT U398 ( .A1(addr_out[3]), .A2(n355), .A3(n352), .Y(n118) );
  AO22X1_RVT U399 ( .A1(i[4]), .A2(n354), .A3(addr_out[4]), .A4(n355), .Y(n117) );
  AO21X1_RVT U400 ( .A1(addr_out[5]), .A2(n355), .A3(n353), .Y(n116) );
  AO22X1_RVT U401 ( .A1(i[6]), .A2(n354), .A3(addr_out[6]), .A4(n355), .Y(n115) );
  AO22X1_RVT U402 ( .A1(i[7]), .A2(n354), .A3(addr_out[7]), .A4(n355), .Y(n114) );
  AO21X1_RVT U403 ( .A1(n355), .A2(w_en_out), .A3(n354), .Y(n113) );
endmodule

