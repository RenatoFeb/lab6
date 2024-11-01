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

module FF (
    input S,        
    input R,        
    input clk,      
    output reg Q,   
    output reg Qn   
);
    always @(posedge clk) begin
        if (S && !R) begin
            Q <= 1;  
        end else if (!S && R) begin
            Q <= 0;  
        end
        
        Qn <= ~Q;  
    end
endmodule
