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


module mux(input clk,
input load,
input ena,
input [3:0] select,
output reg [63:0] q); 
// when load is high, assign select[3:0] to shift register q.
// if ena is high, shift q.


module reg(input clk,
input load,
input ena,
output reg_data,
output reg_load);
// when load is high, assign reg_data[63:0] to shift register reg_load.
// if ena is high, shift reg_load.


module reg_load(input clk,
input load,
input ena,
output reg_load_data,
output reg_load_ena);
// when load is high, assign reg_load_data[63:0] to shift register reg_load_ena.
// ifendmodule
