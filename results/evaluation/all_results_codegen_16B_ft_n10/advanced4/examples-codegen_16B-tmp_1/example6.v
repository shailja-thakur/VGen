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
	if (load == 1)
	begin // loads into the shifter on a clock
	q <= data;
	end
	else if (ena)
	begin
	if (amount == 2'b11) // Shift right by 8 bits
	q <= {q[62:0], 1'b0};
	else if (amount == 2'b10) // Shift right by 1 bit
	q <= {q[62:1], 1'b0};
	else if (amount == 2'b01) // Shift left by 1 bit
	q <= {1'b0, q[63:1]};
	else if(amount == 2'b00) // Shift left by 8 bits
	q <= {1'b0, q[63:8]};
	end
	endmodule
