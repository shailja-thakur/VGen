// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a to out.
// When sel=3, assign b to out.

wire [4:0] in[4:0];

// When a=0, assign b to out. 
// When a=1, assign a to out.
// When a=2, assign b to out.
// When a=3, assign a to out.

mux mux_in[4:0];

// When in[0]=0, assign b to out. 
// When in[0]=1, assign a to out.
// When in[0]=2, assign b to out.
// When in[0]=3, assign a to out.

mux mux_out[4:0];

// When out[0]=0, assign a to in. 
// When out[0]=1, assignendmodule
