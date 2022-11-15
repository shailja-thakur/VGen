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

	reg [63:0] leftshift_d;

	always @(posedge clk) 
	begin
	if(load)
	data <= data >> amount;
	else
	begin
	if(ena)
	begin
	case(amount)
	2'b00:
	leftshift_d <= data << 1;
	2'b01:
	leftshift_d <= data >> 8;
	2'b10:
	leftshift_d <= (data >> 1) >> (63 - amount);
	2'b11:
	leftshift_d <= (data >> 8) >> (63 - amount);
	endcase
	end
	else
	leftshift_d <= data;
	q<=leftshift_d;
	end
	end
	assign q=leftshift_d;
endmodule
