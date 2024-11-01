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


module tb;
    reg clk;
    reg d;
    reg rstn;
    reg [2:0] delay;

    d_ff dff0 (.d(d),
              .reset (rstn),
              .clk (clk),
              .q (q));

    // Generate clock
    always #10 clk = ~clk;

    // Testcase
    initial begin
        clk <= 0;
        d <= 0;
        rstn <= 0;

        #15 d <= 1;
        #10 rstn <= 1;
        for (integer i = 0; i < 5; i=i+1) begin
            delay = $random;
            #(delay) d <= i;
        end
    end
endmodule
