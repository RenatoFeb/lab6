`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 04:51:42 PM
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
    reg reset;
    wire [2:0] count;

    counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    always begin
    #5 clk = ~clk;
    end

    initial begin
    
        clk = 0;

        reset = 0;
        
        #10 reset = 1; 
        #100 reset = 1;
        #10 reset = 0;
        
        $stop;
 
    end

endmodule
