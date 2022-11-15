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

	always @(posedge clk) begin
	if(~load && ~ena) //snapshot
	q <= data[63:0];
	if(~load && ena) //snapshot
	q <= {q[62:0], 1'b0};
	if(load && ~ena) //snapshot
	q <= {q[55:0], data[63:56]};
	if(load && ena) //snapshot
	q <= {q[63], q[62:1]};
	if(ena) //snapshot
	q <= {q[55:0], data[63:56]};
	end
endmodule
