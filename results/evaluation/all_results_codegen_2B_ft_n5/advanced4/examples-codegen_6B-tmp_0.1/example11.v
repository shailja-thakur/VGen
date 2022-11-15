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


// The shift register is a register that can be written to, and read from.
// It is a 64-bit register, and can be written to by a 64-bit value.
// It is also a synchronous load, and can be read by a 64-bit value.
// It is also an asynchronous load, and can be written to by a 64-bit value.
// It is also an asynchronous load, and can be read by a 64-bit value.
// It is also an asynchronous load, and can be written to by a 64-bit value.
// It is also an asynchronous load, and can be read by a 64-bit value.
// It is also an asynchronous load, and can be written to by a 64-bit value.
// It is also an asynchronous load, and can be read by a 64-bit value.
// It is also an asynchronous load, and can be written to by aendmodule
