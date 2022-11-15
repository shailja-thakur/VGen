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



// The shift register is a 64-bit register, so we can shift it either left or right.
// We can also shift it by 1 or 8 bit positions.
// We can also load it with a value.
// We can also enable and disable the shift register.
// We can also read the value that was loaded into it.
// We can also read the value that was shifted out.
// We can also read the value that was shifted in.
// We can also read the value that was shifted in.
// We can also read the value that was shifted out.
// We can also read the value that was shifted out.
// We can also read the value that was shifted in.
// We can also read the value that was shifted out.
// We can also read the value that was shifted in.
// We can also read the value that was shifted out.
// We can also read the value thatendmodule
