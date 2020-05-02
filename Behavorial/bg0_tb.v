`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2019 08:09:32 PM
// Design Name: 
// Module Name: bg0_tb
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


module bg0_tb;
    
    wire [3:0] dat_out;
    wire [7:0] addr_out;
    wire w_en,rst_done;
    
    reg clk,en_in,rev_in;
    
    
    blanket_0 UUT (.dat_out(dat_out),
                   .addr_out(addr_out),
                   .w_en_out(w_en),
                   .rst_done(rst_done),
                   .clk(clk),
                   .en_in(en_in),
                   .rev_in(rev_in));
               
               
 initial 
 begin
    clk = 0;
    en_in = 0;
    rev_in = 0;
 end
 
               
 initial@(posedge clk)              
 begin
// Write Cycle
    #100;
    en_in = 1; 
    rev_in = 0;
    #5000;
    en_in = 0;
    #20;
    rev_in = 1;
    en_in = 1;
    #500
    rev_in = 0;
    en_in = 0; 
end              
       
                   
    // 20ns Clk
 always
 begin
    #10
    clk = ~clk;
 end             
                   
endmodule
