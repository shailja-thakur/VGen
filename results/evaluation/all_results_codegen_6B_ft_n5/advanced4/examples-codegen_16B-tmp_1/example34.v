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
	
	begin

	if (load)	
	begin
	
	q <= data;
	
	end	

	if (ena)
	begin
	
	if (amount == 2'b00)
	begin // left by 1 bit
	
	q <= q << 1;
	
	end // left 1 bit
	
	else if (amount == 2'b01)
	begin // left by 8 bit
	
	q <= q << 8;
	
	end // left by 8 bits
	
	else if (amount == 2'b10) // right by 1 bit
	begin 
	
	q <= q >> 1;
	
	end // right by 1 bit
	
	else // right by 8 bit
	begin
	
	q <= q >> 8;
	
	endend
end
end
endmodule
