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

	 // q1 and q2 make up the output
	 // ena and ld are the input to the multiplier circuit
	 reg [63:0] q1, q2, ld, ld1, ld2, r7, r8, mul, qneg, q8;
	 reg [63:0] m1, m2, m3, m4;
	 reg [1:0] a1, a1not, a2, a2not;
	 // module advmux1 (data0x, data1x, sel, out);

	// module advmux2 (data0x, data1x, sel, out);
	 always@ ( data ) begin
	 q1=0; 
	 q2=0; 
	 ld=0; 
	 mul=0; 
	 qneg=0; 
	end
endmodule
