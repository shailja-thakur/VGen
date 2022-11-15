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


// 64-bit arithmetic shift register.
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
// The shift register can be loaded with any value, and the shift register can be written to any
// of the outputs.
//
// The shift register is 64 bits wide.
//
// The 32-bit shift register is also known as the "rotate register".
//
// The shift register is implemented as two 32-bit registers, and the load and write bit is
// implemented as a 3-bit register.
//
// The shift register is implemented using a "rotating register" technique.
//
// The register can shift left or right, with or without carry.
//
// The register can shift by 1 or 8 bit positions, with or without carry.
//
// If the amount is 0, the shift register is loaded with the value of theendmodule
