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


// The design below uses a sequence of 2-bit register latches.
// The 2-bit register latches select the bit to be shifted in.
// The 2-bit register latches shift in, and shift out, the bit.
// The 2-bit register latches are arranged in parallel, with the first
// to shift out being the first to shift in.
// The first register latches are loaded with the data when the load signal is high.
// The last register latches are loaded with the data when the load signal is low.
// The shift register is loaded with the data when the load signal is high.
// The shift register is shifted out when the load signal is low.
// The first register latch shifts out the bit shifted in, and the second the bit shifted out.
// The last register latch shifts out the bit shifted in, and the second the bit shifted out.
// The shift register is shiftedendmodule
