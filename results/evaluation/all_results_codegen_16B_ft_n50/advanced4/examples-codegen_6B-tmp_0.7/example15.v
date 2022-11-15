// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.


module test_advshift(input clk,
input [31:0] q);
module test_advshift2(input clk,
input [31:0] q);
module test_advshift3(input clk,
input [31:0] q);
module test_advshift4(input clk,
input [31:0] q);
module test_advshift5(input clk,
input [31:0] q);
module test_advshift6(input clk,
input [31:0] q);
module test_advshift7(input clk,
input [31:0] q);
module test_advshift8(input clk,
input [31:0] q);
module test_advshift9(input clk,
input [31:0] q);
module test_advshift10(input clk,endmodule
