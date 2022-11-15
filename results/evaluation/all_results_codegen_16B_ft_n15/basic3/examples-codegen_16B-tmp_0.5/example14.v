// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or sel)
begin
	case(sel)
	2'b00: pos = 2'b00;	// No change
	2'b01: pos = 2'b01;	// in[0] becomes 1
	2'b10: pos = 2'b10;	// in[1] becomes 1
	2'b11: pos = 2'b11;	// in[2] becomes 1
	endcase
end
endmodule
