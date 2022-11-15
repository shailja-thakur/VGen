// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a to out, then assign b to out.

// Design a 4-to-1 multiplexer.
module mux( 
input [4:0] a, b, c, d,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign c to out.
// When sel=3, assign d to out.
// When sel=4, assign a to out, then assign b to out.
// When sel=5, assign c to out, then assign d to out.
// When sel=6, assign a to out, then assign b to out, then assign c to out.
// When sel=7, assign d to out, then assign aendmodule
