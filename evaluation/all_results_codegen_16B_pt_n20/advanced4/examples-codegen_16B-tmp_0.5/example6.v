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


// The shift register is loaded with the contents of data[63:0] when load is asserted.
// The shift register is shifted by amount[1:0] and q is shifted to the right by amount[1:0] bits.
// The shift register is shifted by 1 bit if amount[0] is low.
// The shift register is shifted by 8 bits if amount[0] is high.
// The shift register is shifted by 1 bit if amount[1] is low.
// The shift register is shifted by 8 bits if amount[1] is high.
// The shift register is shifted by 1 bit if amount[2] is low.
// The shift register is shifted by 8 bits if amount[2] is high.
// The shift register is shifted by 1 bit if amount[3] is low.
// The shift register is shifted by 8 bits if amount[3] is high.
// The shiftendmodule
