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

	
reg [4:0] direction;
reg [5:0] amount_backup;

	always @(*) begin
	case(amount)
	6'b000000: direction = 2'b00;
	6'b000001: direction = 2'b01;
	6'b000010: direction = 2'b10;
	6'b000011: direction = 2'b11;
	6'b000100: direction = 2'b00;
	6'b000101: direction = 2'b00;
	6'b000110: direction = 2'b00;
	6'b000111: direction = 2'b00;
	6'b001000: direction = 2'b00;
	6'b001001: direction = 2'b00;
	6'b001010: direction = 2'b00;
end
endmodule
