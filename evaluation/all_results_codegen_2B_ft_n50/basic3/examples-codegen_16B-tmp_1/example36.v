// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin
	case(in)
	0: pos=0;	//000
	1: pos=0;	//000
	2: pos=1;	// 001
	4: pos=1;	// 001
	5: pos=0;	// 000
	6: pos=0;	// 000
	8: pos=1;	// 001
	12: pos=2;	// 010
	15: pos=2;	// 010
	3: pos=0;	// 000
	7: pos=0;	// 000
	9: pos=1;	// 001
	13: pos=3;	// 011
	14: pos=3;	// 011
	10: pos=3;	// 011
	11: pos=2;	// 010
	end
endmodule
