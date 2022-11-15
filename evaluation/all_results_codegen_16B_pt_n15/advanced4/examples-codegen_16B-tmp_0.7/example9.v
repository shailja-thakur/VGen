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


// -------- begin architecture definition -------------------

// input clk: synchronous shift register clock.
// the data is loaded on the rising clock edge.
// input ena: the enable signal, which should be high when the shift register should be shifted.
// input load: the load signal, which should be high when the shift register should be loaded.
// input amount: the shift amount, as 00=1 bit, 01=8 bits, 10=left, 11=right.
// input data: the 8-bit input data.
// output q: the 8-bit output data.
// Advshift Register
advshift #(
	.clk(clk),
	.load(load),
	.ena(ena),
	.amt(amount),
	.data(data),
	.q(q)
) advshift_inst(
	.clk(clk),
endmodule
