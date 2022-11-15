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
	if(ena)
	begin
	//if load is high, assign data[63:0] to this shift register.
	if(load) q <= data;
	else
	//when ena is high, shift q.
	if(ena)
	begin
	//if shift left is chosen ...
	if(amount == 2'b00)
	// ... shift left 1 bit
	q <={q[62:0], 1'b0};
	//if shift right is chosen ...
	else if(amount == 2'b01)
	// ... shift right 8 bits
	q <={q[63], q[63:1]};
	//if shift left is chosen ...
	else if(amount == 2'b10)
	// ... shift right 1 bit
	q <={q[63], {end
end
endmodule
