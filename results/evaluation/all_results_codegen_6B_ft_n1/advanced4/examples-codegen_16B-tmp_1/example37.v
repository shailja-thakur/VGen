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
	begin: AdvShifter
//	if (load == 1'b1) //Assigns data[63:0] to the register q.
//	begin
//	q <= data;
//	end

	if(ena) //Begins shift operation only if ena is high.
	begin
	if(amount == 2'b11 )
//	begin
	q[63:8] <= q[55:0];
	q[7:0] <= q[63:56];
	q[55:8] <= q[23:0];
	q[23:0] <= q[55:24];
	q[55:24] <= q[31:0];
	q[31:0] <= q[47:24];
	q[47:24] <= q[7:0];
end
end
endmodule
