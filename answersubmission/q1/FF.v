`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 05:25:52 PM
// Design Name: 
// Module Name: FF
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

module FF( S, R, clk, Q, Qn);
    
    input  S; 
    input R;
    input clk;
    output reg Q;  
    output wire Qn;  


    assign Qn = ~Q; 

    always @(posedge clk) begin
        if (S && ~R)      
            Q <= 1;
        else if (~S && R)   
            Q <= 0;
        else if (S && R)    
            Q <= 1'bx;    
    end

endmodule
