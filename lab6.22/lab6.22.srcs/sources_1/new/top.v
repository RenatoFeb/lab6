`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 02:25:38 PM
// Design Name: 
// Module Name: top
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


module top(

    );
endmodule

module Syn( clk, d, q, reset);
input d, clk, reset;
output reg q;

always @(posedge clk) begin
    
  
    if (reset) begin    
    
    q <= 0;
    
    end else begin
    
    q <= d;
    
    end

end

endmodule

module aSyn( clk, reset, d, q);
input d, clk, reset;
output reg q;

always @(posedge clk or posedge reset) begin
    
    if (reset) begin    
    
    q <= 0;
    
    end else begin
    
    q <= d;
    
    end

end


endmodule
