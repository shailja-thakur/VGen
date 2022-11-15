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


assign b = ~ena & ena & ~load;
assign a = clk ^ ~ena & ~load;

always @(posedge clk)
	if $delay$(ena)
	if b
	#(i_setup)
	if $delay$(a)
	q <= 8'b0;
	else
	q <= 8'b0 & data[63:62];  // load first
	end
end

always @(posedge clk)
	#(i_ambient)

	if ena

	#(shift_reg)
	q <= 8'b00 & data[63:62]; // select which direction and how much to shift
	end

end
endmodule
