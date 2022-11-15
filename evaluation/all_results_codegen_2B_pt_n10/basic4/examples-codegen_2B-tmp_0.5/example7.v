// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign 0 to out. 
// When sel=3, assign 1 to out. 

wire [4:0] in[4];


// This is a design-time "thing". 
// The "thing" is a wrapper around a real hardware device. 
mux mux_dev(
in[4] a,
in[4] b,
in [4:0] sel,
out [4:0] out );

// The "thing" is a wrapper around a real hardware device. 
mux mux_dev(
in[4] a,
in[4] b,
in [4:0] sel,
out [4:0] out );

// The "thing" is a wrapper around a real hardware device. 
mux mux_dev(
in[4] aendmodule
