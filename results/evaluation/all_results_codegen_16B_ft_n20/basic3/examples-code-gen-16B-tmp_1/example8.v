// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(sel, first, second)
	case (sel)
		1'b0: out = second;
		1'b1: out = first;
		// default: assert False;
	endcase
endmodule
