// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
MUX( a, sel, out )

// 1-to-1 mux = mux * y + y
module muxX(
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
//MUX( mux( a, sel, out ) * y, sel, out )


module mux3( 
input [4:0] a, b, c,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign c to out.

MUX3RANGE( a, b, c, selendmodule
