// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design an N-to-N multiplexer.
module mux(
input [N:0] a, b, 
output [N:0] out );
// When a[i] = 0, assign b[i] to out[i].
// When a[i] = 1, assign b[i] to out[i] except when a[i] = b[i].
// The output must be 1-bit wide.

// Design a 2-to-1 multiplexer.
module mux2(
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design an N-to-N multiplexer.
module mux2(
input [N:0endmodule
