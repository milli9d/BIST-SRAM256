`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2019 03:32:16 AM
// Design Name: 
// Module Name: BIST_top
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


module BIST_tb;

localparam clk_period = 20;
reg clk;
reg[3:0] select;
integer i;
wire [3:0] dat_in;
wire [3:0] dat_out;
wire [7:0] addr_out;
wire op_done,w_en;


BIST_engine_top BIST(.select(select),
                    .dat_out(dat_out),
                    .dat_in(dat_in),
                    .addr_out(addr_out),
                    .w_en(w_en),
                    .clk(clk),
                    .op_done(op_done)
                    );


SRAM sram_1(.dat_in(dat_out),
          .addr_in(addr_out),
          .w_en(w_en),
          .clk(clk),
          .read_d(dat_in)
          );

initial  
begin
    clk = 0;
    #100;
    select = 4'b0001;
    
end

always @(posedge clk)
begin
    i =0;
    if (select == 7)
        begin
        select = 0;
        end
    if( op_done)
        begin
        select = select + 1;
        for (i=0;i<50;i=i+1)
        begin
        
        @(posedge clk) begin end
        end
        end
    end
//Clocking
always
    begin
        #(clk_period/2)
        clk = ~clk;          
   end

  endmodule