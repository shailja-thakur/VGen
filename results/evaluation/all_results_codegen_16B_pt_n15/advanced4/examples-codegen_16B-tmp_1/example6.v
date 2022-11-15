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

	//writes 0 to 2'b00, writes 1 to 2'b01, writes 2 to 2'b20, writes 3 to 2'b21
	//writes 4 to 2'b00, writes 5 to 2'b01, writes 6 to 2'b20, writes 7 to 2'b21
	//writes 8 to 2'b00, writes 9 to 2'b01, writes A to 2'b20, writes B to 2'b21
	//writes C to 2'b00, writes D to 2'b01, writes E to 2'b20, writes F to 2'b21
	//writes G to 2'b00, writes H to 2'b01, writes I to 2'b20, writes J to 2'b21
	//writes K to 2'b00, writes L to 2'b01, writes M to 2'bendmodule
