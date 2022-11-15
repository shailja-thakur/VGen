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




// Reg 0 is the final output
// Reg 1 is the shift register 
// Reg 2 is the enable signal
// Reg 3 is the clock
// Reg 4 is the load signal
// Reg 5 is the amount (the value of the amount bit)
// Reg 6 is the shift amount 
// Reg 7 is the enable bit
// Reg 8 is the load bit
// Reg 9 is the amount bit
// Reg 10 is the shift amount bit
// Reg 11 is the enable bit
// Reg 12 is the load bit
// Reg 13 is the amount bit
// Reg 14 is the shift amount bit
// Reg 15 is the enable bit
// Reg 16 is the load bit
// Reg 17 is the amount bit
// Reg 18 is the shift amount bit
// Reg 19 is the enable bit
// Reg 20 is the load bit
// Reg 21 is the amount bit
// Reg 22 is the shift amount bit
// Regendmodule
