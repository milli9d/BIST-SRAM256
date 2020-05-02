`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2019 02:47:05 PM
// Design Name: 
// Module Name: BIST_engine_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BIST_engine_top(
    output [7:0] addr_out,
    output [3:0] dat_out,
    input [3:0] dat_in,
    output w_en, op_done,
    input [3:0] select,
    input clk
    );


wire [3:0] dat_out_bg0;
wire [7:0] add_out_bg0;
wire w_en_bg0,
     rst_done_bg0,
     rev_out_bg0;


wire [3:0] dat_out_c1;
wire [7:0] add_out_c1;
wire w_en_c1,
     rst_done_c1,
     rev_out_c1;

wire [3:0] dat_out_mc;
wire [7:0] add_out_mc;
wire w_en_mc,
     rst_done_mc,
     rev_out_mc;

wire [3:0] dat_out_mlr;
wire [7:0] add_out_mlr;
wire w_en_mlr,
     rst_done_mlr,
     rev_out_mlr;

reg [3:0] r_dat_out;
reg [7:0] r_add_out;

reg [3:0] r_select ;
reg r_rst_done,
    r_w_en;


wire bg0,c1,mar_c,mar_lr;

localparam clk_period=20;


control c_unit (.select(select),
                .rst_done(r_rst_done),
                .clk(clk),
                .bg0(bg0),
                .mar_lr(mar_lr),
                .c1(c1),
                .mar_c(mar_c),
                .rev_out(rev_out_c1),
                .bln_out(rev_out_bg0)
                );

blanket_0 bg_0 (.dat_out(dat_out_bg0),
                   .addr_out(add_out_bg0),
                   .w_en_out(w_en_bg0),
                   .rst_done(rst_done_bg0),
                   .clk(clk),
                   .en_in(bg0),
                   .rev_in(rev_out_bg0));
                   
chk_1 chk_for (.dat_out(dat_out_c1),
                   .addr_out(add_out_c1),
                   .w_en_out(w_en_c1),
                   .rst_done(rst_done_c1),
                   .clk(clk),
                   .en_in(c1),
                   .rev_in(rev_out_c1));
                   
                  
March_C march_c (.dat_out(dat_out_mc),
                   .addr_out(add_out_mc),
                   .dat_in(dat_in),
                   .w_en_out(w_en_mc),
                   .rst_done(rst_done_mc),
                   .clk(clk),
                   .en_in(mar_c));
                   
                   
March_LR march_lr (.dat_out(dat_out_mlr),
                   .addr_out(add_out_mlr),
                   .dat_in(dat_in),
                   .w_en_out(w_en_mlr),
                   .rst_done(rst_done_mlr),
                   .clk(clk),
                   .en_in(mar_lr));
                        
                       
                   

//Select Lines
always @(posedge clk)
begin
     
    case (select)
//      0: Do Nothing
        1: begin        //Blanket 0
                r_dat_out = dat_out_bg0;
                r_add_out = add_out_bg0;
                r_rst_done = rst_done_bg0;
                r_w_en = w_en_bg0;
            end
            2: begin
//                @(posedge w_clk_top)
                r_dat_out = dat_out_bg0;
                r_add_out = add_out_bg0;
                r_rst_done = rst_done_bg0;
                r_w_en = w_en_bg0;
            end
            3: begin
//                @(posedge w_clk_top)
                r_dat_out = dat_out_c1;
                r_add_out = add_out_c1;
                r_rst_done = rst_done_c1;
                r_w_en = w_en_c1;
            end
            4: begin
//                @(posedge w_clk_top)
                r_dat_out = dat_out_c1;
                r_add_out = add_out_c1;
                r_rst_done = rst_done_c1;
                r_w_en = w_en_c1;
            end
            5: begin
                
                r_dat_out = dat_out_mc;
                r_add_out = add_out_mc;
                r_rst_done = rst_done_mc;
                r_w_en = w_en_mc;
            end
            6: begin
                r_dat_out = dat_out_mlr;
                r_add_out = add_out_mlr;
                r_rst_done = rst_done_mlr;
                r_w_en = w_en_mlr;
            end
            default:begin end            
    endcase
   
end


//Continous Assignments   

assign dat_out = r_dat_out;
assign addr_out = r_add_out;
assign w_en = r_w_en;
assign op_done = r_rst_done;

endmodule        