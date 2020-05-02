`timescale 1ns / 1ps

module SRAM_tb;
   
//   Inputs
   reg clk,w_en;
   reg [3:0] dat_in;
   reg [7:0] addr_in;
   
//Outputs    
   wire [3:0] read_d;
         
//    Instatntiate SRAM
    SRAM UUT(.dat_in(dat_in),
          .addr_in(addr_in),
          .w_en(w_en),
          .clk(clk),
          .read_d(read_d)
          );
 
 initial 
    begin
        clk = 0;
        w_en = 0;
        dat_in = 4'b0;
        addr_in = 8'b0;
       
    end
    
    
    initial @(posedge clk)
    begin
    // wait 100ns for stability
        #100;
//    Write Cycle
    w_en = 1;
    dat_in = 4'h1;
    addr_in = 8'h5;
    #20;
    dat_in = 4'h2;
    addr_in = 8'h6;
    #20;
     dat_in = 4'h3;
    addr_in = 8'h35;
    #20;
     dat_in = 4'h4;
    addr_in = 8'h45;
    #20;
     dat_in = 4'hf;
    addr_in = 8'h1;
    #20;
     dat_in = 4'hf;
    addr_in = 8'h2;
    #20;
     dat_in = 4'hf;
    addr_in = 8'h3;
    #20;
     dat_in = 4'hf;
    addr_in = 8'h4;
    #20;
    w_en = 0;
    dat_in = 4'h0;
//    Pause for clarity
    #100;
//Read Cycle    
    addr_in = 8'h5;
    #20;
    addr_in = 8'h6;
    #20;
    addr_in = 8'h35;
    #20;
    addr_in = 8'h45;
    #20;
    addr_in = 8'h1;
    #20;
    addr_in = 8'h2;
    #20;
    addr_in = 8'h3;
    #20;
    addr_in = 8'h4;
    #20;
    addr_in = 8'h0;
    
    
    end
 


//Init test 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
// 20ns Clk
 always
 begin
    #10
    clk = ~clk;
 end
    



endmodule
