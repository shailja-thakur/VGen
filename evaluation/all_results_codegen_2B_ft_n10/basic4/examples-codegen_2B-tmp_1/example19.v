// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// The logical operation must be:
// (a logical OR b)/sel
// (b logical AND ~sel)/~sel

void main ()
{
	out[0] = (a<b) ? a : b;
	out[1] = (~sel ? ~b : a) | (~sel ? ~a : ~b);
	out[2] = (a==b) ? a : b;
	out[3] = (~sel ? a & ~b : a | ~b);
}
endmodule
