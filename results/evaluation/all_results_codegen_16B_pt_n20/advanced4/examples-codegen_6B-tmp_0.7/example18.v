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


// The shifter cycle is as follows:
// if ena is high, shifter contains data[63:0].
// if ena is low, shifter contains data[62:0].
// if load is high, shifter contains data[62:0].
// if load is low, shifter contains data[61:0].
// if amount is 1, data[62:0] is sent to shifter.
// if amount is 8, data[61:0] is sent to shifter.
// if amount is 16, data[62:0] is sent to shifter.
// if amount is 32, data[63:0] is sent to shifter.
//
// z2: Shifteer's register is set to data 3:0 when ena is high.
// z0: Shifteer's register is set to data 2:0 when ena isendmodule
