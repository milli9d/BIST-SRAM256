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
module March_C(
         output [3:0] dat_out,
         output [7:0] addr_out,
         input [3:0] dat_in,
         output w_en_out,rst_done,
         input clk,en_in
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
        if( en_in) 
        begin 
//           Write '0's : any address direction -working
           for (i =0; i<=255 ; i=i+1)
           begin
            @ (posedge clk)
                begin
                    w_data = 4'b0000 ;
                    w_en = 1;
                    w_addr = i;
                end
           end
           
//           AutoDelay
           while (addr_out!=255)
           begin
                @(posedge clk)begin end        
           end 
              
                    
//        Read 0 followed by W1 covering entire address space -working
           for (i =0; i<256 ; i=i+1)
           begin
//           Read Cycle
           @(posedge clk)
              begin
                    w_data = 4'b1111 ;
                    w_en = 0;
                    w_addr = i;
              end
            @(posedge clk)begin end
            @(posedge clk)begin end   
//            Write Cycle
            @(posedge clk)
               begin
               if (dat_in==0)
                  begin
                      w_en = 1;
                  end
               end     
           end
 //           AutoDelay          
           while (addr_out!=255)
           begin
                @(posedge clk)begin end        
           end       
            @(posedge clk)begin
            w_en = 0; end
         
           
//      Read 1 followed by W0 covering entire address space -working           
           for (i =0; i<=255 ; i=i+1)
           begin
//           Read Cycle
           @(posedge clk)
              begin
                    w_data = 4'b0000 ;
                    w_en = 0;
                    w_addr = i;                      
              end
              @(posedge clk)begin end
              @(posedge clk)begin end 
//            Write Cycle
            @(posedge clk)
               begin
               if (dat_in==4'b1111)
                  begin
                      w_en = 1;
                  end
               end     
           end


 //           AutoDelay          
           while (addr_out!=255)
           begin
                @(posedge clk)begin end        
           end       
            @(posedge clk)begin
            w_en = 0; end 
          
//      Read 0 followed by W1 covering entire address space-working   
           for (i =255; i>=0 ; i=i-1)
           begin
//           Read Cycle
           @(posedge clk)
              begin
                    w_en = 0;
                    w_addr = i;
                    w_data = 4'b1111 ;
              end
            @(posedge clk)begin end  
            @(posedge clk)begin end 
//            Write Cycle
            @(posedge clk)
               begin
               if (dat_in==4'b0000)
                  begin
                      w_en = 1;
                  end
               end     
           end
 //           AutoDelay          
           while (addr_out!=0)
           begin
                @(posedge clk)begin end        
           end       
            @(posedge clk)begin
            w_en = 0; end 
               
               
               
                     

           for (i =255; i>=0 ; i=i-1)
           begin
//           Read Cycle
           @(posedge clk)
              begin
                    
                    w_en = 0;
                    w_addr = i;
                    w_data = 4'b0000 ;
                        
               end
            @(posedge clk)begin end   
            @(posedge clk)begin end    
//            Write Cycle
            @(posedge clk)
               begin
               if (dat_in==4'b1111)
                  begin
                      w_en = 1;
                  end
               end     
           end
           
           
           while (addr_out!=0)
           begin
                @(posedge clk)begin end        
           end       
           @(posedge clk) 
           w_addr = 255; 

           while (addr_out!=255)
           begin
                @(posedge clk)begin end        
           end    
           
//           Read '0's : Upwards Index
           for (i =0; i<256 ; i=i+1)
           begin
            @ (posedge clk)
                
                    w_data = 4'b0000 ;
                    w_en = 0;
                    w_addr = i;
           end
           
           if (addr_out!=255)
           begin
                @(posedge clk)begin end         
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
