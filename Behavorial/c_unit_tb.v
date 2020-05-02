`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2019 07:30:29 PM
// Design Name: 
// Module Name: c_unit_tb
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

module c_unit_tb;
    
//  Inputs
    reg rst_done,clk,rst;
    reg [3:0] select; 
//  Outputs
    wire bg0,
        mar_lr,
        c1,
        mar_c,
        rev_out,
        bln_out;
           
    control c_unit (.select(select),     
                .rst_done(rst_done),
                .clk(clk),                  
                .bg0(bg0),
                .mar_lr(mar_lr),
                .c1(c1),
                .mar_c(mar_c),
                .rev_out(rev_out),
                .bln_out(bln_out));    
  
    always @(posedge clk)
    begin
        if (rst == 1)
        begin
            select = 4'b0001;
            rst_done = 0; 
        end
    end
    
 
 // RESET OR INIT
    initial
    begin
        select = 4'b0001;
        rst_done = 0;
        clk = 0;
        rst = 0;
        #150;
        $stop;
    end  
    
   //Initiates at 0 and continues to loop through 0 to 8. All Control unit functions are tested including default cases.
    always @(posedge clk)
    begin
        if (select < 8 && select!= 4'b0000 ) 
        begin
            select = select + 4'b0001;
        end
        else
            select = 4'b0000;
    end
    
        // 20ns Clk
 always
 begin
    #10
    clk = ~clk;
 end    
    

endmodule


