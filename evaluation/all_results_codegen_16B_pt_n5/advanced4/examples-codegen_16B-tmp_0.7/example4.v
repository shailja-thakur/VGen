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


// The shift register is implemented as a 64-bit unsigned arithmetic shift register.
// To make the shift register's input and output easier to model, the input and output are implemented as input and output buffers.

// The shifter's input is clk; the shifter's output is q.

// The load input is high when the register should be loaded with data.
// The ena input is high when the shifter should be shifted.
// The amount input chooses how much to shift, and is either 1 or 8 bits, selected by amount.

// The q output is the shifter's output.
// This module has only one output: q, and q is driven by three inputs: clk, load, and ena.

// shiftIn:  load (1) or not (0), shift (1) or not (0), amount (8)
// shiftOut: load (1) orendmodule
