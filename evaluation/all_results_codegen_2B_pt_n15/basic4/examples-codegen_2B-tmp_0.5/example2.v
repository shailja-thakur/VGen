// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a and b to out.

// UML: Fig. 1.8.1
// State machine for the multiplexer.
module mux_sm(
input [4:0] a, b,
input sel,
output [4:0] out );

// State machine for the 2-to-1 multiplexer.
module mux_sm_2to1(
input [4:0] a, b,
input sel,
output [4:0] out );

// State machine for the 1-to-2 multiplexer.
module mux_sm_1to2(
input [4:0] a, b,
input sel,
output [4:0] out );

// State machine for the 1-to-1 multiplexer.
module mux_sm_1toendmodule
