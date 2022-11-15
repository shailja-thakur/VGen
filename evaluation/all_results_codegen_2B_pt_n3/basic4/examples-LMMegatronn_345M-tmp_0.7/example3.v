// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// FIXME: This is a mux, then mux is a 1-to-1 mux.
// assign out = sel? b : a;
endmodule
