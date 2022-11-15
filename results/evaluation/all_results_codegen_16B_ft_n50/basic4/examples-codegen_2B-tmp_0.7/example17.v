// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// This is the top level design function
design top( 
input [4:0] a, b,
input sel,
output [4:0] out );

// This is a design function of the internal 
// multiplexers.
design internal_mux(
input [4:0] a, b,
input sel,
output [4:0] out,
mux mux_in );

// This is a design function of the 
// internal multiplexers.
design internal_mux_out(
input [4:0] a, b,
input sel,
output [4:0] out,
mux mux_out );

// This is the internal design function.
// It will output a(sel=0) and b(sel=1).
// Since out is an output port, we will
// callendmodule
