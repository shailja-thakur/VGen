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

	always @ (posedge clk) begin
	if(load) begin
	// Use <= instead of = to make sure the output is done with time delay
	q <= data;
	end
	else if (ena) begin// choose which direction to shift
	// choose shift based on what option the user selected
	case (amount)
	// used in displaying data onto the testbed
	 2'b00: begin //left shift
	q[7:1] <= q[6:0];
	q[0] <= q[7];
	end
	 2'b01: begin //left shift
	q[15:8] <= q[14:0];
	q[0] <= q[15];
	end
	 2'b10: begin //right shift
	q[0] <= q[7];
	q[7:1] <= q[endmodule
