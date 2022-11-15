// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
mux( sel, a, out );
mux( sel, b, out );

// Design a 5-to-1 multiplexer.
module mux2( 
input [4:0] a, b, c, d, e,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
mux2( sel, a, out );
mux2( sel, b, out );
mux2( sel, c, out );
mux2( sel, d, out );
mux2( sel, e, out );

// Design a 6-to-1 multiplexer.
module mux3( 
input [4:0] a, b, c, d, eendmodule
