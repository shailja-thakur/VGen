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


module clock( input clk, output reg [63:0] qmark );
	output[1] qmark <= load and load or q;
	output[0] qmark <= not load and q;

	reg [63:0] q200 = [];
	reg [63:0] q100 = [];
	reg [63:0] q000 = [];
	reg [63:0] q050 = [];
	reg [63:0] q040 = [];
	reg [63:0] q080 = [];
	reg [63:0] q030 = [];
	reg [63:0] q020 = [];

	always @ (posedge clk or negedge clk)
	begin
	{
		case amount >  0
			q200 <= data;
			q100 <= data;
			q000 <= data;
			q050 <= data;end
endmodule
