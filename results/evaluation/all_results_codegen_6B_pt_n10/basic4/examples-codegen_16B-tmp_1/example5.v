// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// assign it to a more precise sel than sel, logic left shift sel's position.
mux8to1 m0 ( a, b, sel, out[0] );
mux8to1 m1 ( a, b, sel, out[1] );
mux8to1 m2 ( a, b, sel, out[2] );
mux8to1 m3 ( a, b, sel, out[3] );
mux8to1 m4 ( a, b, sel, out[4] );
endmodule
