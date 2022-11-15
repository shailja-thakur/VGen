// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a to out. 
// When sel=3, assign b to out.
assign out = a;

// Design a switch that selects the correct input port based on the value of sel.
module switch( 
input sel,
output [4:0] out );
// When sel=0, assign out=a. 
// When sel=1, assign out=b.
// When sel=2, assign out=a. 
// When sel=3, assign out=b.
assign out = a;

// Design a 2-bit counter.
module counter( 
input reset,
input clk,
output [2:0] out );
// When reset=0, increment out, and output the new value. 
// When reset=1, reset out to 0.
// When clendmodule
