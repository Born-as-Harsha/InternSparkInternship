`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2026 10:06:21 PM
// Design Name: 
// Module Name: STA_Timing_tb
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


`timescale 1ns/1ps

module STA_Timing_tb;

reg clk;
reg rst;
reg [7:0] a;
reg [7:0] b;
reg [7:0] c;

wire [15:0] result;

STA_Timing dut(
    .clk(clk),
    .rst(rst),
    .a(a),
    .b(b),
    .c(c),
    .result(result)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    a = 0;
    b = 0;
    c = 0;

    #20;
    rst = 0;

    a = 8'd10; b = 8'd5; c = 8'd2;
    #10;

    a = 8'd20; b = 8'd4; c = 8'd6;
    #10;

    a = 8'd15; b = 8'd8; c = 8'd3;
    #10;

    a = 8'd30; b = 8'd10; c = 8'd5;
    #50;

    $finish;
end

initial
begin
    $monitor("Time=%0t a=%d b=%d c=%d result=%d",
             $time,a,b,c,result);
end

endmodule