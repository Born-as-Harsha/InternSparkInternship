`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2026 10:53:57 PM
// Design Name: 
// Module Name: tb_alu8
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


module tb_alu8;

reg [7:0] A, B;
reg [2:0] op;

wire [7:0] Y;

integer i;

alu8 uut(
    .A(A),
    .B(B),
    .op(op),
    .Y(Y)
);

initial begin

A = 8'd10;
B = 8'd5;

op = 3'b000; #20;
op = 3'b001; #20;
op = 3'b010; #20;
op = 3'b011; #20;
op = 3'b100; #20;
op = 3'b101; #20;
op = 3'b110; #20;
op = 3'b111; #20;

for(i=0; i<20; i=i+1)
begin
    A = $random;
    B = $random;
    op = $random & 3'b111;

    #20;
end

#50;
$finish;

end

endmodule

