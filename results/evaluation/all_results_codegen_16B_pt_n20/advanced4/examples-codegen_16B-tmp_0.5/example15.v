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


// $bits = amount * 2 + 1
// $bits = 2 * amount + 1
// $bits = amount + 1
// $bits = amount
// $bits = amount * 2
// $bits = amount * 2 + 2
// $bits = amount * 2 + 3
// $bits = amount * 2 + 4
// $bits = amount * 2 + 5
// $bits = amount * 2 + 6
// $bits = amount * 2 + 7
// $bits = amount * 2 + 8
// $bits = amount * 2 + 9
// $bits = amount * 2 + 10
// $bits = amount * 2 + 11
// $bits = amount * 2 + 12
// $bits = amount * 2 + 13
// $bits = amount * 2 + 14
// $bits = amount * 2 + 15
// $bits = amount * 2 + 16
// $bits = amount * 2endmodule
