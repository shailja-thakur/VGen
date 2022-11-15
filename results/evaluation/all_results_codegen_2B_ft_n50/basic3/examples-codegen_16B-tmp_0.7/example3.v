// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( in or sel )
begin
	case ( sel )
	0: pos = 2'bz;	// When sel=0, don't drive anything. Output only depends on in.
	1: pos = in;	// When sel=1, output is same as input.
	endcase
end
endmodule
