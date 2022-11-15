// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design a 2-to-2 multiplexer.
module mux2( 
input [4:0] a, b, c, d,
input sel,
output [4:0] out );
// When sel=0, assign a to out[0].
// When sel=1, assign b to out[1].
// When sel=2, assign c to out[2].
// When sel=3, assign d to out[3].

// Design a 2-to-4 multiplexer.
module mux4( 
input [4:0] a, b, c, d, e, f,
input sel,
output [4:0] out );
// When sel=0, assign a to out[0].
// When sel=1, assign b to out[1].
// When sel=endmodule
