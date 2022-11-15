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

	always@ (posedge clk)
	begin
	if (load) q <= data;
	if (ena)
	begin

 
	 if (amount == 2'b00) 
	 q <= {63'b0,q[62:1]};
	 
	 if (amount == 2'b01) 
	 q <= q[55:0]; // because q is a 96-bit number & it takes 56 bits to shift by 1
	 
	 if (amount == 2'b10) 
	 q <= {q[54:0],63'b0};
	 
	 if (amount == 2'b11) 
	 q <= q[23:0];
	 
	 
	 end
	end

endmodule
