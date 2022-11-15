// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// The input mux takes in [4:0] a and b and selects one of them based on the input sel.

// Create a 4bit multiplexer
// When sel=0, assign a[0] to out[0].
// When sel=1, assign b[0] to out[0].
// Create a 32bit 2-to-1 multiplexer

assign out = (~sel & a) | (sel & b);

endmodule
