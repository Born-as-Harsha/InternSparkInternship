`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2026 10:31:31 AM
// Design Name: 
// Module Name: adder_tb
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

module adder_tb;

reg [3:0] a,b;
wire [4:0] sum;

adder dut(
.a(a),
.b(b),
.sum(sum)
);

initial begin

a=4'b0010;
b=4'b0011;
#10;

a=4'b0100;
b=4'b0101;
#10;

a=4'b1111;
b=4'b0001;
#10;

$finish;

end

initial begin

$monitor("time=%0t a=%b b=%b sum=%b",
         $time,a,b,sum);

end

endmodule
