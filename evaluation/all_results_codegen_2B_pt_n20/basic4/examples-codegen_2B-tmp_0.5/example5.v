// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design a 1-to-2 multiplexer.
module mux2( 
input [3:0] a, b,
input sel,
output [3:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design a 3-to-3 multiplexer.
module mux3( 
input [2:0] a, b,
input sel,
output [2:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design a 3-to-4 multiplexer.
module mux4( 
input [1:0] a, b,
input sel,
output [1:0] out );
// When sel=0,endmodule
