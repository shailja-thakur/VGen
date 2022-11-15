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

	reg [63:0] shr1;
	reg [63:0] shr8;
	reg [63:0] shrDir;
	wire [63:0] shr1to8;
	
	// shr1[54:0]
	assign shr1to8 = {shr1[55:54],shr1[53:0], shr1[9]};
	
	// shr8[56:0]
	assign shr8 = {shr8[55:56], shr8[55:0]};

	 // shrDir[63:0]
	always @ (*) begin
	if (load) begin
	q <= #1 data;
	end
	
	
	case(amount)
	2'b00: begin // left 1 bit
	shrDir = shr1to8;
	end
	2'b01: beginend
endmodule
