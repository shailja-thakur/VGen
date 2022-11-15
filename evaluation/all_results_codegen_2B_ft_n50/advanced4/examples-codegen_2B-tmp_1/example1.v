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

	reg [63:0] temp; 
	
	always @(*) begin
	
	case (amount)
	
	2'b00: temp = q << 1;
	2'b01: temp = q << 8;
	2'b10: temp = q >> 1;
	2'b11: temp = q >> 8;
	default: temp = q[63:0];
	endcase
 	// if shift left, clear q from right.
	// if shift right, leave q alone.
	if (load) q = data;
	// if ena, shift the q without aalusators.
	else begin
	// if ena is high, assert
	if (ena) q <= temp;
	end
	end
	
endmodule
