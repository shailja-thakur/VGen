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


module main(input clk,
input [63:0] data,
output reg [63:0] q);
// input data: 64 bit register.
// output q: 64 bit register.
// The register q is the result of shifting data by amount.

module int_to_bool(input [63:0] data,
output reg [1:0] q);
// input data: 64 bit register.
// output q: 1 bit register.
// The register q is the result of shifting data by 1.

module bool_to_int(input reg [1:0] q,
output reg [63:0] data);
// input q: 1 bit register.
// output data: 64 bit register.
// The register data is the result of shifting q by 1.

module int_to_bool_dummy(input [63:0] data,
outputendmodule
