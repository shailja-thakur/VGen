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


// Notice: if you are using a shift register to shift data, you need to make sure that the
// shift register does not overflow when you load and shift the data.
// For example, if you are using a shift register to shift data[63:0] to data[31:0] and shift
// the data[31:0] to data[15:0] by 1, the data[31:0] will be shifted to the data[15:0] and the
// data[15:0] will not be loaded and shifted by 1.

// Note: If you are using a shift register to shift data, you should make sure that the shift
// register is empty before you assign data to it.

// Note: If you are using a shift register to shift data, you should make sure that the shift
// register does not overflow when you load and shift the data.

// Note: Ifendmodule
