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

	always @ (posedge clk)
	begin
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift. 
	if(load)
	begin
	q <= data;
	end
	else begin
//	
//	Shift value is too large to describe.
	end
	
//	if ena and select = 11 latch shift value 
	if(ena)
	begin
	if((amount == 2'b11) && (q == 64'b0))
	begin
	q = data;
	end
 // if you want to shift by one bit
	else if(amount != 2'b11)
	begin
	q = q << amount;
	end
	else 
	begin
	q =end
end
end
endmodule
