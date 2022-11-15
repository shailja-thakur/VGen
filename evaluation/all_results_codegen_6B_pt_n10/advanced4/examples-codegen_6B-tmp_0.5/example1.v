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


// This module implements a shift register with a synchronous load.
// It is used to implement a simple adder.
module advadder(input clk,
input load,
input ena,
input [1:0] carryin,
input carryout,
input [63:0] q,
input [63:0] data,
output reg [63:0] sum);
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// carryin: This is the carry from the previous bit.
// carryout: This is the carry to be sent to the next bit.
// sum: The sum of the previous two inputs.
// This module is used to implement a simple adder.

module advadder_s(input clk,
input load,
input ena,
input [1:0endmodule
