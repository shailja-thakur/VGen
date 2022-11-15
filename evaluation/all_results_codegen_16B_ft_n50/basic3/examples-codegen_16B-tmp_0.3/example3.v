// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos)
begin
	casex (in)
	// 3'b000
	0: pos = 2'b00;
	// 3'b001
	1: pos = 2'b01;
	// 3'b010
	2: pos = 2'b10;
	// 3'b011
	3: pos = 2'b11;
	// 3'b100
	4: pos = 2'b01;
	// 3'b101
	5: pos = 2'b10;
	// 3'b110
	6: pos = 2'b11;
	// 3'b111
	7: pos = 2'b11;
	// default
	default: pos = 2'b00;
	endcase
end
endmodule
