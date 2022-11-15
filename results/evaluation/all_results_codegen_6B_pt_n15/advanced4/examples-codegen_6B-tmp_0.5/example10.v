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


// The following example shows how to use the shift register in a loop.
// The shift register is loaded with the data provided as an argument.
// The shift register is shifted with the data provided as an argument.
// The result is then provided as an argument.
// The shift register is reset to the same value as the data.
module loop(input clk,
input load,
input ena,
input [63:0] data,
output reg [63:0] q);
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// The result is provided as an argument.
// The shift register is reset to the same value as the data.

// The following example shows how to use the shift register in a loop.
// The shift register is loaded with the data provided as an argument.
// The shift registerendmodule
