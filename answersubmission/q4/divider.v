`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2024 05:03:06 PM
// Design Name: 
// Module Name: divider
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


module divider(input clk_in, input reset, output clk_out);

    wire q;

    tff tff_inst (
        .clk(clk_in),
        .reset(reset),
        .t(1'b1),
        .q(q)
    );

    assign clk_out = q;

endmodule



module tff( input clk, input reset, input t, output reg q );

initial begin q = 1'b0; end

always@(posedge clk) begin

if(!reset) q = 0; else if(t) q = ~q; else q = q;

end

endmodule
