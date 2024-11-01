`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 05:07:29 PM
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

    reg clk_in;
    reg reset;
    wire clk_out;

    divider uut (
        .clk_in(clk_in),
        .reset(reset),
        .clk_out(clk_out)
    );

    initial begin
        clk_in = 0;
        forever #10 clk_in = ~clk_in; 
    end

    initial begin
        reset = 0;
        #20 reset = 1;
        #200 reset = 0;
        #20 reset = 1;
  
    end

endmodule
