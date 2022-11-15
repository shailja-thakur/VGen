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


// ----------------------
// design the a synchronous shift register
// ----------------------

// A synchronous shift register consists of a register and a clock.
// The shift register can shift both left and right, and by 1 or 8 bit positions, selected by amount.
// The shift register can be set to either high or low.
// The clock is a clock input.
// The clock input is set to low and the shift register is set to high.
// The clock is pulsed when the shift register is set to high.
// The clock is pulsed when the shift register is set to low.
// The clock is pulsed when the shift register is set to high.
// The clock is pulsed when the shift register is set to low.
// The clock is pulsed when the shift register is set to high.
// The clock is pulsed when the shift register is set to low.
// The clock is pulsendmodule
