// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
mux2to1 ins0 (a[4], b[4], sel, out[4]);
mux2to1 ins1 (a[3], b[3], sel, out[3]);
mux2to1 ins2 (a[2], b[2], sel, out[2]);
mux2to1 ins3 (a[1], b[1], sel, out[1]);
mux2to1 ins4 (a[0], b[0], sel, out[0]);
endmodule
