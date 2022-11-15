// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// The output is a 5-bit output vector.
// The output vector is defined as follows:
// out[0] = sel ? a[0] : b[0];
// out[1] = sel ? a[1] : b[1];
// out[2] = sel ? a[2] : b[2];
// out[3] = sel ? a[3] : b[3];
// out[4] = sel ? a[4] : b[4];

// The output vector is created as follows:
// assign out = sel ? a : b;
// The output vector is created as follows:
// assign out[0] = sel ? a[0] : b[0];
// assign out[1] = sel ? a[1] : b[1];
// assign out[2] = selendmodule
