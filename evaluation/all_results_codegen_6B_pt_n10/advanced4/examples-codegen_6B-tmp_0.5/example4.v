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


// This is a test bench for the module advshift.
//
// This test verifies the functionality of the module advshift.
// The following combinations are tested:
//
// load: 0 => shift left by 1 bit.
// load: 1 => shift left by 8 bits.
// load: 0 => shift right by 1 bit.
// load: 1 => shift right by 8 bits.
// load: 1 => shift left by 1 bit.
// load: 0 => shift left by 8 bits.
// load: 0 => shift right by 1 bit.
// load: 1 => shift right by 8 bits.
// load: 0 => shift left by 1 bit.
// load: 1 => shift left by 8 bits.
// load: 0 => shift right by 1 bit.
// load: 1 => shift right by 8 bits.
// load: 1 => shift left by 1 bit.
// load: 0endmodule
