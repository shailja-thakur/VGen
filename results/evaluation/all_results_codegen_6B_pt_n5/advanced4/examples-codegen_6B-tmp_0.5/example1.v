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


// The following function implements a NAND gate.
// The output of the NAND is the bitwise AND of the inputs:
// out = (in1 & in2)
// The inputs are the bits of a 64-bit register.
// The output is the bitwise AND of the inputs.
// Note that the inputs are NOT inverted.
//
// The NAND gate is implemented by the following function:
// function nand(in1, in2)
// return (in1 & in2)
// end

// The following function implements an OR gate.
// The OR gate is implemented by the following function:
// function or(in1, in2)
// return in1 | in2
// end

// The following function implements a XOR gate.
// The XOR gate is implemented by the following function:
// function xor(in1, in2)
//endmodule
