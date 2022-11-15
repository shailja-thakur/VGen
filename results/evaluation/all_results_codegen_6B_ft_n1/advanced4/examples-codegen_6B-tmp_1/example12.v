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


module duplikator();
	control wire alt_ena;
	control wire alt_load;
	control wire alt_shift_amount;
	clock 640kHz;
	reg 7bits ['0' = 0, '1' = 1];
	output reg [0-10] reg_glitch;
	dsc always_comb.all else control alt_load => (alt_load && !ada_rs), reset nand advshift => (ena && !load, !nand advshift [1:0]);
	always_comb : reg_glitch = |q & ((0 = .and(advshift.data[0]) ) | (1 = .and(advshift.data[7:6])));
		read_nand(alt_data, advshift.input[0]);

	let base_clock([1'b1]);
// Design a synchronous load controlendmodule
