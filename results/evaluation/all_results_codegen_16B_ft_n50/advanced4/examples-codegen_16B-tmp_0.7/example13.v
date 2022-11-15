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
	if(load)
	begin
	q[63:62] <= data[63:62];
	q[61:56] <= data[61:56];
	q[55:48] <= data[55:48];
	q[47:40] <= data[47:40];
	q[39:32] <= data[39:32];
	q[31:24] <= data[31:24];
	q[23:16] <= data[23:16];
	q[15:8] <= data[15:8];
	q[7:0] <= data[7:0];
	end
	else if(ena)
	begin
	if(amount == 2'b00)
	begin
	q[63:1] <= q[62:0];
	end
end
end
endmodule
