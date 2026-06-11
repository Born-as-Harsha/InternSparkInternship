`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 10:05:26 PM
// Design Name: 
// Module Name: STA_Timing
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


module STA_Timing(
    input clk,
    input rst,
    input [7:0] a,
    input [7:0] b,
    input [7:0] c,
    output reg [15:0] result
);

reg [7:0] stage1_add;
reg [7:0] stage1_sub;
reg [15:0] stage2_mult;
reg [15:0] stage3_acc;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        stage1_add <= 8'd0;
        stage1_sub <= 8'd0;
    end
    else
    begin
        stage1_add <= a + b;
        stage1_sub <= a - c;
    end
end

always @(posedge clk or posedge rst)
begin
    if(rst)
        stage2_mult <= 16'd0;
    else
        stage2_mult <= stage1_add * stage1_sub;
end

always @(posedge clk or posedge rst)
begin
    if(rst)
        stage3_acc <= 16'd0;
    else
        stage3_acc <= stage2_mult + {8'd0,c};
end

always @(posedge clk or posedge rst)
begin
    if(rst)
        result <= 16'd0;
    else
        result <= stage3_acc;
end

endmodule