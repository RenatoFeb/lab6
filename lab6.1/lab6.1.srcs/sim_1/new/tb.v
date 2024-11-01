`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 05:28:28 PM
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


module tb();

reg clk;

always begin clk = 1'b0; #(5/2) clk = 1'b1; #(5/2); end

reg r, s;
wire latchQ, latchQn, flopQ, flopQn;

FF flop(r, s, clk, flopQ, flopQn);

SrLatch latch (.S(r), .R(s),  .Q(latchQ),  .Qn(latchQn));

initial begin 
    r = 0; s = 0;
    #5 s = 1;
    #5 s = 0;
    #5 r = 1;
    #5 r = 0; s = 1;    
    #5 s = 0; r = 1;
    #5 r = 0;
    #5 s = 1; r = 1;
    
    end 
endmodule
