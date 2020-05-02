//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Milind Singh
// 
// Create Date: 12/08/2019 12:54:37 PM
// Design Name: 
// Module Name: 256x4b
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
// SRAM Module 256x4b ,Verilog
// Control Signals = clk , write_en
// Data Signals = dat_in,addr_in
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module SRAM(dat_in,addr_in,w_en,clk,read_d);
    input wire [3:0] dat_in;
    input wire [7:0] addr_in;
    input wire w_en, clk;
    output wire [3:0] read_d;
    
/* Declare the RAM variable */
reg [3:0] ram[255:0] ;
/* Variable to hold the registered read address */
reg [7:0] addr_reg = 8'b00000000;
reg [3:0] read_d_r = 4'b0000;
//integer i;
//initial 
//begin
//    for (i=0;i<256;i=i+1)
//    begin
 
//        ram[i]=4'b00;
//    end
//end


always @ (posedge clk)
begin
    /*Write*/
    if (w_en)begin
        ram[addr_in] = dat_in;
        addr_reg = addr_in;
        end
     else begin
        addr_reg = addr_in;
     end 
    read_d_r = ram[addr_reg];
    end
    /* Continuous assignment implies read returns NEW data.
    *  This is the natural behavior of the TriMatrix memory
    *  blocks in Single Port mode*/
    assign read_d = read_d_r;
endmodule


