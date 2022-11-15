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

	reg [63:0] tempp, tempn;
	// define async. low-high term of shift value

always @(posedge clk)
	begin
	if(load)
	q <= tempp;
	else if(ena)
	begin
	 // always use conditional terms.
	 if (amount == 2'b00)
	begin
	 // shift left by 1 bit
	 tempp <= q[63:1] ;
	 tempn <= q[63:1] ;
	 end
	 else if (amount == 2'b01)
	begin
	 // shift left by 8 bits
	 tempp <= q[63:8] ;
	 tempn <= q[63:8] ;
	 end
	 else if (amount < 2)
	begin
	 // when > 2, i.e. when amount < 2
	temppend
end
end
endmodule
