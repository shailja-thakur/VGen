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
if(load)
	q <= data;
else if(ena)
	begin
	if(amount == 2'b00)
	begin
	q[0] <= q[1];
	q[1] <= q[2];
	q[2] <= q[3];
	q[3] <= q[4];
	q[4] <= q[5];
	q[5] <= q[6];
	q[6] <= q[7];
	q[7] <= q[8];
	q[8] <= q[9];
	q[9] <= q[10];
	q[10] <= q[11];
	q[11] <= q[12];
	q[12] <= q[13];
	q[13] <= q[14];end
end
end
endmodule
