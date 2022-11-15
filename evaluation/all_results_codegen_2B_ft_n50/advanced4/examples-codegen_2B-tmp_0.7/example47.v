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


reg [63:0] prev;
always @(posedge clk)
	if (load)
	begin
// assign right shift 8 bits.
// assign left shift 1 bit.
// assign left shift 8 bits.
// assign right shift 1 bit.
	
	q <= data;
	prev <= {data[0],q[63:1]};
	end
	else if (ena)
	begin
	if (amount == 2'b00)
// shift left.
	begin
	q <= {q[62:0], prev[63]};
	end
	else if (amount == 2'b01)
// shift left.
	begin
	q <= {prev[63], q[63:1]};
	end
	else if (amount == 2'b10)
// shift right.
	begin
	q <= {prev[end
end
endmodule
