// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design a 2-to-2 multiplexer.
module mux2( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design a 2-to-n multiplexer.
module muxn( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design a 3-to-1 multiplexer.
module mux3( 
input [3:0] a, b,
input sel,
output [3:0] out );
// When sel=0,endmodule
