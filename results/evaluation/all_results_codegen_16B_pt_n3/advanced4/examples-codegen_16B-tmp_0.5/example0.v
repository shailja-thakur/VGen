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


// The shift register is a bit-inverted loop-back shift register.
// The input is loaded into the first bit of the shift register, and then
// shifted by one bit. The result is clocked into the second bit, and so on.
// When the bit-inverted loop-back shift register is loaded with a value,
// it will shift it back through the loop.

// The shift register is a bit-inverted loop-back shift register.
// The input is loaded into the first bit of the shift register, and then
// shifted by one bit. The result is clocked into the second bit, and so on.
// When the bit-inverted loop-back shift register is loaded with a value,
// it will shift it back through the loop.

// The shift register is a bit-inverted loop-back shift register.
// The input is loaded into the first bit ofendmodule
