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
 begin
	if (ena)
	begin
	if (load)
	q <= data;
	 else
	 begin
	 // direction decides shift amount.
	 // direction = 1'b0: left = 6'b000000;
	 // direction = 1'b1: left = 6'b111111;
	 // amount determines whether to shift 1 or 8 bits.
	 // amount = 2'b00: left shift by 1;
	 // amount = 2'b01: left shift by 8;
	 // amount = 2'b10: right shift by 1;
	 // amount = 2'b11: right shift by 8.
	q <<= amount;	
	q[63:1] = q[62:0];
	 // shift all the way right.
	 q[0] = q[64];
	 // putend
end
end
endmodule
