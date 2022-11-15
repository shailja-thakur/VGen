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


module combinatorial(input clk,
			   input reset,
			   input shift);
module adv_mux(input clk,
		     input ena,
		     input [4] b3,
		     input [4] b2,
		     input [4] b1,
		     input [4] b0,
		     output reg [3:1] b3,
		     output reg [2:0] b2,
		     output reg b1,
		     output reg b0);
module iqr_merge(input i1,
		 input i2,
		 input i3,
		 input i4,
		 input i5,
		 input i6,
		 input i7,
		 input i8);
intitex valproc, debug, debug_qvalue;


function compute_q_signalsendmodule
