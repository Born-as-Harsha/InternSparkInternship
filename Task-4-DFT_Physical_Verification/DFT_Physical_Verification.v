`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2026 12:01:35 PM
// Design Name: 
// Module Name: DFT_Design
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

module DFT_Design(
    input clk,
    input rst,
    input scan_en,
    input scan_in,
    input d,
    output reg q,
    output scan_out
);

always @(posedge clk or posedge rst)
begin
    if(rst)
        q <= 1'b0;
    else if(scan_en)
        q <= scan_in;
    else
        q <= d;
end

assign scan_out = q;

endmodule
