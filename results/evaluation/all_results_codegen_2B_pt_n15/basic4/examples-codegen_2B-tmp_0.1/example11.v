// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design a 2-to-1 demultiplexer.
module demux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Design a 2-to-1 multiplexer with a delay.
module mux_delay( 
input [4:0] a, b,
input sel,
output [4:0] out,
input delay );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When delay=0, do not delay.
// When delay=1, delay.

// Design a 2-to-1 demultiplexer with a delay.
module demux_delayendmodule
