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


// BEHAVIOR
// When load is high, load the shift register with the data.
// When load is low, shift the shift register and assign the result to the data.

// When ena is high, shift the shift register by amount.
// When ena is low, shift the shift register and write the result to the data.

// THE MODEL
// The shift register is a 64-bit register, and the data is a 64-bit register.
// The data is also a 64-bit register, but only the lower half of the register is
// written, because the registers are paired.
// This is a hardware design.

// The shift register is not implemented as a register.
// It is implemented as a shift register, and uses a one-bit register to determine
// how much to shift.

// The data is not implemented as a register.
// It is implemented asendmodule
