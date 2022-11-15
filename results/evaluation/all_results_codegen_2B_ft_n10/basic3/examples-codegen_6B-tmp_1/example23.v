// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
	case(pos) // fall through unimplemented
	pos=0;
	1'b1: if(in==3'b110) pos=0;
	1'b2: if(in==3'b101) pos=0;
	1'b4: if(in==3'b100) pos=0;
	endcase

// When sel=0, assign b to pos
assign pos = ~sel ? b : pos;
endmodule
