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
	if (load) // if load is high, data is written into shift register q.
	q <= data; 
	else if(ena) // if shift is enabled, q is shifted. //ONLY enabled when ena is high.
	begin
	if(amount==2'b00) // the leftmost bit is shifted out.
	q <= {q[62:0], 1'b0}; 
	else if(amount==2'b01) // shifts 8 bits to the right.
	q <= {q[55:0], 8'b0};
	else if(amount==2'b10) // shifts the rightmost bit out.
	q <= {q[63], q[63:1]}; 
	else // shifts 8 bits to the left.
	q <= {q[56:0end
end
endmodule
