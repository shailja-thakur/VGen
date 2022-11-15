// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

// Signals
input [4:0] a;
input [4:0] b;
input [1:0] sel;
output [4:0] out;

// Blocks
mux mux_0( a, b, sel, out );
mux mux_1( a, b, sel, out );

// Module
module top(
input [4:0] a,
input [4:0] b,
input [1:0] sel,
output [4:0] out );

mux mux_2( a, b, sel, out );
mux mux_3( a, b, sel, out );

// Signals
input [4:0] a;
input [4:0] b;
input [1:0] sel;
output [4:0endmodule
