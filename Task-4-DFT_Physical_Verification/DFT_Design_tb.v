`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2026 12:02:05 PM
// Design Name: 
// Module Name: DFT_Design_tb
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


module DFT_Design_tb;

reg clk;
reg rst;
reg scan_en;
reg scan_in;
reg d;

wire q;
wire scan_out;

DFT_Design dut(
    .clk(clk),
    .rst(rst),
    .scan_en(scan_en),
    .scan_in(scan_in),
    .d(d),
    .q(q),
    .scan_out(scan_out)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    scan_en = 0;
    scan_in = 0;
    d = 0;

    #20 rst = 0;

    d = 1;
    #10;

    d = 0;
    #10;

    scan_en = 1;
    scan_in = 1;
    #10;

    scan_in = 0;
    #10;

    scan_en = 0;
    d = 1;
    #20;

    $finish;
end

endmodule