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

if(load)
	q <= data;
	// shift left or right, depending on amount.
	// if left, shift 1 bit.
	// if right, shift 8 bits.
else if (ena)
	begin
	if(amount == 2'b00 | amount == 2'b11)
	q <= q << 1;
	else
	q <= q << 8;
	end
	// set output to input.
	// else, do not perform any shifting, and return input unchanged.
	
end
endmodule
