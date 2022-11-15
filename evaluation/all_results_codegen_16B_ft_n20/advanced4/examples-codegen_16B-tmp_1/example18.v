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

	reg [63:0] q;
	
	always @(posedge clk) begin
	if(load == 1)
	begin
	 // set output to input when load is high. 
	 q = data; 
	end
	// if specified conditions are met.
	if(ena == 1)
	begin
	// add/subtract to/from q using specified amount
	// amount can be 2 bits.
	 // corresponds to:
	 // 01 -> left shift.
	 // 10 -> zero.
	 // 11 -> right shift. 
	 // 00 -> no change. 
	if (amount == 2'b00)
	begin
	 // shift left if amount is 00.
	 q[63:1] = q[62:0]; 
	 q[0] = q[64]; 
	end
	else if (amountend
end
endmodule
