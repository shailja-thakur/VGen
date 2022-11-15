// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
case(pos) 
	0: case(in) // If pos=0 and in=000, the output is 00
	1: case(in) // If pos=0 and in=001, the output is 01
	2: case(in) // If pos=0 and in=010, the output is 10
	3: case(in) // If pos=0 and in=011, the output is 11
	default: // If the unspecified case in the above table is hit, activate nullification 
	pos: M 
	
	endcase 
enddir 
 
endmodule
