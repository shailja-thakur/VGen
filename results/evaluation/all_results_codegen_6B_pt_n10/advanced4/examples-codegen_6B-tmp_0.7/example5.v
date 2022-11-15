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


// opcodes
// 00: LASR(x) = x
// 01: LASR(x) = x + 1
// 10: LASR(x) = x + 8
// 11: LASR(x) = x + 9
//
// LASR(x): 0-63

// opcodes bits
// x: data to shift/add
// x + 1: shifted data
// x + 8: shifted data + 8
// x + 9: shifted data + 9

// S2 = 001 = 0x03
// S2 = 100 = 0x0C
// S2 = 101 = 0x0D
// S2 = 110 = 0x1C
// S2 = 111 = 0x1D

// S3 = 011 = 0x0B
// S3 = 110 = 0x1A
// S3 = 111endmodule
