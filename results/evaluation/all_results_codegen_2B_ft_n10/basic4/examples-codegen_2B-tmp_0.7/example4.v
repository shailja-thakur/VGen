// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// Not all the inputs need to be selected. 
// You only need to select a single input at a time.
mux2to1 mux0( sel ? b : a, sel ? a : b, out[0] );
mux2to1 mux1( sel ? b : a, sel ? a : b, out[1] );
mux2to1 mux2( sel ? b : a, sel ? a : b, out[2] );
mux2to1 mux3( sel ? b : a, sel ? a : b, out[3] );
mux2to1 mux4( sel ? b : a, sel ? a : b, out[4] );
endmodule
