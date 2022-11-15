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


// This module is a wrapper for the shift register.
// It is a simple wrapper to allow the shift register to be used in a pipeline.
// The shift register is a 64-bit register, and the shift register can be used
// in a pipeline to shift 32 bits at a time.
// The pipeline can be used to shift 32 bits at a time, and then shift 16 bits at a time.
// The pipeline can be used to shift 16 bits at a time, and then shift 8 bits at a time.
// The pipeline can be used to shift 8 bits at a time, and then shift 4 bits at a time.
// The pipeline can be used to shift 4 bits at a time, and then shift 2 bits at a time.
// The pipeline can be used to shift 2 bits at a time, and then shift 1 bit at a time.
// The pipeline can be used to shift 1 bit at a time, and thenendmodule
