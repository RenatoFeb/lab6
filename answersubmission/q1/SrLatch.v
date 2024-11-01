`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 05:27:27 PM
// Design Name: 
// Module Name: SrLatch
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


module SrLatch (

    input S, 
    input R,   
    output Q,  
    output Qn  
);
    wire n1, n2; 

    nor (n1, S, Qn);
    nor (n2, R, Q);
    
    assign Q = n1;
    assign Qn = n2;
endmodule
