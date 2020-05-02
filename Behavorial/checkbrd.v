`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Milind Singh
// 
// Create Date: 12/09/2019 01:55:38 AM
// Design Name: 
// Module Name: bg0
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

//This module can give a background 0 when recieved rst signal
module chk_1(
         output [3:0] dat_out,
         output [7:0] addr_out,
         output w_en_out,rst_done,
         input clk,en_in, rev_in
);

//Counter variable
integer i=0;
//Registers to manipulate outputs
reg [7:0] w_addr;
reg [3:0] w_data = 4'b1010;
reg w_en;
reg rst_d=0;


//Begin Process at rst recieved    
//Write 0s in ascending order of rows 
always @ (posedge clk)
   begin
        @(posedge clk)begin end
        if (rev_in) 
        begin
            w_data = 4'b0101;
        end
        else
        begin
            w_data = 4'b1010; 
        end    
        if (en_in ==1)
        begin
        for (i =0; i<256 ; i=i+1)
           begin
            @ (posedge clk)
                begin
                    w_addr = i;
                    w_data = ~(w_data) ;
                    w_en = 1;
                end    
           end
               
//Output Rst_done when operation complete
        @(posedge clk)
        if(addr_out==255)
            begin
                rst_d = 1;
            end
        end
        @(posedge clk) begin end
        if (rst_d)
        begin
            w_en = 0;
            w_addr=0;
            rst_d = 0;
        end  
    end
    
//Continous assignments
    assign w_en_out = w_en;
    assign addr_out = w_addr;
    assign dat_out = w_data;
    assign rst_done = rst_d;
endmodule
