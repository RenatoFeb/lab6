`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 05:44:24 PM
// Design Name: 
// Module Name: d_ff
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


module d_ff (
    
    input wire clk,
    input wire d,
    input wire reset,  
    output reg q
    
);

    always @(posedge clk or negedge reset) begin
        if (!reset) 
            q <= 1'b0;
        else      
            q <= d; 
    end

endmodule