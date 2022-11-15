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


module cwork(input clk,
output reg salida);
// salida: when clk is high, assign salida = data.
// if clk is low, do nothing.


module mux_load(
	input clk1,
	input clk2,
	input ena,
	input [7:0] s1,
	input [7:0] s2,
	output reg salida);
// salida: when clk1 or clk2 is high, assign salida = s1 or s2.
// If ena is high, assign salida = s2, else salida = s1.


module mux_ena(
	input clk1,
	input clk2,
	input ena,
	input [7:0] s1,
	input [7:0] s2,
	endmodule
