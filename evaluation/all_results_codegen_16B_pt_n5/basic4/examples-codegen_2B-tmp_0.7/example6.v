// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// Instantiate four 1-bit muxes
mux mux1(a[0], b[0], sel, out[0]),
mux mux2(a[1], b[1], sel, out[1]),
mux mux3(a[2], b[2], sel, out[2]),
mux mux4(a[3], b[3], sel, out[3]);
endmodule
