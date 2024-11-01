`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 02:26:20 PM
// Design Name: 
// Module Name: tb
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

module tb;
    reg clk;
    reg d;
    reg reset;
    
    wire qAsync, qSync;
    
    Syn dff1(clk, d, qSync, reset); 

    aSyn dff0(clk, reset, d, qAsync); 

    always begin clk = 1'b0; #(5/2) clk = 1'b1; #(5/2);  end
    
    initial begin 
    
    reset = 1'b0; 
    
     
     d = 1'b1 ; #5 reset = 1'b1; #10 d = 1'b0; #10 reset = 1'b1;#10 reset = 1'b0; #40 d = 1'b1; #40 reset = 1'b1; #40 d = 1'b0;    
       
    
         
     $stop;
         
     end

        
endmodule
