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


always @ (posedge clk or posedge load)
if (load) q <= data;

always @ (posedge ena) 

// 00: load shifted left.
// Shift left: shift in m[n] at the MSB, shift n+1 to the LSB.
// x1: use data register up to 127
// x2: use data register 129
// x3: use data register 137
// x4: use data register 145
// x5: use data register 163
// x6: use data register 181
// x7: use data register 191
// x8: use data register 199
// x9: use data register 207
// 10: use data register 215
// 11: use data register223
// 12: use data register241
// 13: use data register 255
// 14: use data register value 63
// 15: use data register value 31endmodule
