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


always @(posedge clk)
{
	// This is just a free-running timer, not a clock.
	// The Y1 is used to keep track of how many cycles since last rising edge of clk.
	// The X4 is used to keep track of the number of times the shift register has been shifted.
	X4 = X4 + 1;
	if (ena && (X4 > 64))
	{
		// ASSERT( 1 == load || 0 == load );
		// ASSERT( 0 == ena || 1 == ena );
		// ASSERT( 1 == load || 0 == load );
		// ASSERT( 1 == ena || 0 == ena );
		// ASSERT( 1 == load || 0 == load );
		// ASSERT( 1 == ena || 0 == ena );

		// When load is high, assign data[63endmodule
