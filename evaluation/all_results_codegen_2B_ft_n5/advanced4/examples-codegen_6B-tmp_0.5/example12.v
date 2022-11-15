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


// This module can be used as a shift register.
// The shift register can be loaded from any source.
// The shift register can be shifted left or right by any amount.
// The shift register can be loaded from any source.
// The shift register can be shifted left or right by any amount.

// There are two ways to implement this module.
// 1. Use a state variable.
// 2. Use a register.
//
// In the first way, the register is used as a state variable.
// The register can be loaded from any source.
// The register can be shifted left or right by any amount.
// The register can be loaded from any source.
// The register can be shifted left or right by any amount.

// The second way uses a register.
// The register is used as a state variable.
// The register can be loaded from any source.
// The register canendmodule
