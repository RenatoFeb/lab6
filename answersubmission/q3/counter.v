`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 04:50:50 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,
    input reset,
    output wire [2:0] count
);

    wire q0, q1, q2;

    tff tff0 (.clk(clk), .reset(reset), .t(1'b1), .q(q0));       
    tff tff1 (.clk(q0), .reset(reset), .t(1'b1), .q(q1));       
    tff tff2 (.clk(q1), .reset(reset), .t(1'b1), .q(q2));        

    assign count = {q2, q1, q0};

endmodule


module tff( input clk, input reset, input t, output reg q );

initial begin q = 1'b0; end

always@(posedge clk) begin

if(!reset) q = 0; else if(t) q = ~q; else q = q;

end

endmodule

