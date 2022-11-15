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

	always@(posedge clk) begin
	// if load is high, load shift register with data[63:0]
	// if ena is high, shift q.
	case(amount)
	2'd0: 
	begin
	q[0] <= data[0];
	q[63] <= data[63];
	end
	2'd1:
	begin
	q[1] <= data[1];
	q[62] <= data[62];
	end
	2'd2:
	begin
	q[2] <= data[2];
	q[61] <= data[61];
	end
	2'd3:
	begin
	q[3] <= data[3];
	q[60] <= data[60];
	end
	2'd4:
	begin
	q[4] <= dataend
end
endmodule
