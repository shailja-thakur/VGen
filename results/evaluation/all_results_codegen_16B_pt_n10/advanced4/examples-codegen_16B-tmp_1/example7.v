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


// • The shift register is implemented by wires holding 8-bit numbers.
// • We use the normal <reg + 1> addressing to read the register.
//   Shift register s[i] is defined as follows:  
//   s[0] to s[63]
//   • In the case where each bit i of the 64 bits in data is shifted, 
//     the input amount is set to zero and the output is written to s[i].
//   • In the case where 8 bits are shifted left, the input amount is set to 1 
//     and the output is written to s[i-1].
//   • In the case where 8 bits are shifted right, the input amount is set to 
//     8 and the output is written to s[i+1], which must be a valid register.
//   • In the case where 2 bits are shifted right, the input amountendmodule
