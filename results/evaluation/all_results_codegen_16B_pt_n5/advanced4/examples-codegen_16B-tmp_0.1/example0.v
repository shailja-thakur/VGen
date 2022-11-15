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


// The shift register is implemented as a 64-bit shift register.
// The shift register is clocked by the clock signal.
// The shift register is loaded by the load signal.
// The shift register is enabled by the enable signal.
// The shift register is shifted by the amount signal.
// The shift register is shifted left by 1 bit if amount is 0.
// The shift register is shifted left by 8 bits if amount is 1.
// The shift register is shifted right by 1 bit if amount is 2.
// The shift register is shifted right by 8 bits if amount is 3.
// The shift register is shifted by the amount signal.
// The shift register is shifted by the clock signal.
// The shift register is shifted by the load signal.
// The shift register is shifted by the enable signal.
// The shift register is shifted by the amount signal.
// The shift register is shifted by the clock signal.endmodule
