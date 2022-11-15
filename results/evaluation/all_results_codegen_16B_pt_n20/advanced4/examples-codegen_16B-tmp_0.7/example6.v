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


// This is the operation that performs the arithmetic shift.
// q63 = q63 + (q62 << amount) + (q61 << (amount + 1)) + (q60 << (amount + 2)) +
//      (q59 << (amount + 3)) + (q58 << (amount + 4)) + (q57 << (amount + 5)) +
//      (q56 << (amount + 6)) + (q55 << (amount + 7)) + (q54 << (amount + 8)) +
//      (q53 << (amount + 9)) + (q52 << (amount + 10)) + (q51 << (amount + 11)) +
//      (q50 << (amount + 12)) + (q49 << (amount + 13)) + (q48 << (amount + 14)) +
//      (q47 << (amount + 15)) + (q46 << (amount + 16endmodule
