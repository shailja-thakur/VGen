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


//---------------------------------------------------------
//  Avalon7-specific code
//---------------------------------------------------------

// The Avalon7 shift register is a 32-bit register that can be used to
// implement various shift functions.
//
// The register is implemented as a register of 32-bit words.
// The register is initialized to all 1's.
// The register can be loaded with a 32-bit value.
// The register can be shifted left or right.
// The register can be shifted by 1 or 8 bits.
//
// The register is clocked by the rising edge of the clock input.
// The register is cleared by the falling edge of the clock input.
//
// The register can be configured to be output or input.
// The register can be configured to be reset or not.
// The register can be configured to be synchronous or asynchronous.
//
// The register can be configured to be a register or aendmodule
