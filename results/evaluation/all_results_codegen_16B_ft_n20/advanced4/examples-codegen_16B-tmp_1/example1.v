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

	always@(posedge clk)
	if(load == 1'b1)
	// wire synthesizng based on synchronous load allows redistribution
	// to digital async logic such as always block.
	// assign statements in always block have same left to right order 
	// as written (e.g. assign a = 3'b100 is an error).
	begin
	// our shift and rotate is symmetrical except for direction sign bit.
	// select direction for shift based on amount from user.
	// leave left bit 0, 2'b10 direction : shift right.
	// leave left 7 bits in, 2'b01 direction : shift left.
	// rotate left : 2'b11
	q[63:1] <= (ena)? q[62:0] : q[63:1];
	q[0] <= (ena)? 1'b0 : 1end
endmodule
