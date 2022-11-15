// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or sel)
	begin: output
	case(sel)
	0: pos=0;
	1: pos=in[0];
	2: pos=in[1];
	3: pos=in[2];
	endcase
	end
endmodule
