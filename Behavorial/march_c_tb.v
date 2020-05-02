`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2019 11:13:55 PM
// Design Name: 
// Module Name: march_c_tb
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


module march_c_tb;
    
    reg en_in,clk;
    wire [3:0] dat_in;
    wire [3:0] dat_out;
    wire [7:0] addr_out;
    wire rst_done,w_en;
   
    March_C UUT (  .dat_out(dat_out),
                   .addr_out(addr_out),
                   .dat_in(dat_in),
                   .w_en_out(w_en),
                   .rst_done(rst_done),
                   .clk(clk),
                   .en_in(en_in));
            
//    Instatntiate SRAM
    SRAM UUT2(      .dat_in(dat_out),
                    .addr_in(addr_out),
                    .w_en(w_en),
                    .clk(clk),
                    .read_d(dat_in)
                    );
                
    initial 
 begin
    clk = 0 ;
    en_in = 0 ;
 end
 
               
 initial@(posedge clk)              
 begin
// Write Cycle
    #100;
    en_in = 1; 
    #25000;
    en_in = 0;
    #20;
 end              
       
                   
    // 20ns Clk
 always
 begin
    #10
    clk = ~clk;
 end                            
endmodule
