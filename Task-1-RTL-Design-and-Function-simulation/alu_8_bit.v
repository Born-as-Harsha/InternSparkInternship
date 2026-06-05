`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2026 10:52:17 PM
// Design Name: 
// Module Name: alu_8_bit
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


module alu8(
input [7:0] A,B,
input [2:0] op,
output reg [7:0] Y
);
always @(*) begin
case(op)
3'b000: Y=A+B;
3'b001: Y=A-B;
3'b010: Y=A&B;
3'b011: Y=A|B;
3'b100: Y=A^B;
3'b101: Y=~A;
3'b110: Y=A<<1;
3'b111: Y=A>>1;
endcase
end
endmodule