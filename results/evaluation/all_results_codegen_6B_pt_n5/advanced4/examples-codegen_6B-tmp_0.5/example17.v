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


module top(input clk,
input clk2,
input clk3,
input clk4,
input clk5,
input clk6,
input clk7,
input clk8,
input clk9,
input clk10,
input clk11,
input clk12,
input clk13,
input clk14,
input clk15,
input clk16,
input clk17,
input clk18,
input clk19,
input clk20,
input clk21,
input clk22,
input clk23,
input clk24,
input clk25,
input clk26,
input clk27,
input clk28,
input clk29,
input clk30,
input clk31,
input clk32,
input clk33,endmodule
