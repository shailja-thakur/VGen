// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign in to out. 
// When sel=3, assign out to out.
signal [4:0] mux_in, mux_out;
signal [4:0] mux_sel;
signal [4:0] mux_val;
// The Mux block has two "inputs".
// The first "input" is a 2-to-1 multiplexer.
// The second "input" is a 4-to-1 multiplexer.
// The output is a 4-to-1 multiplexer.
shared memory [4:0] tx_in_0, tx_in_1, tx_out;
// The multiplexer in the "input" port is a 3-to-1 multiplexer.
// The input port is a 2-to-1 multiplexer.
// Theendmodule
