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


// Include the module basics
module top(
input clk,
input load,
input ena,
input [63:0] data,
output reg [1:0] load_bit,
output reg [63:0] data_bit);

// Simple register and MUX.
// In a register, this will be a 32-bit integer.
// In a MUX, this will be a 32-bit integer.
// A register can be combined with a MUX using "AND" and "OR"
// The MUX input is the register data, the MUX output is the MUX_INPUT.
// This could be used to control a LED using a register.
module reg_mux(input load,
input ena,
input [63:0] data,
output MUX_INPUT);

// Simple register and MUX.
// In a register,endmodule
