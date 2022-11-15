// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

module counter (
input [3:0] cnt);
// Counter is either 0 or 1.
// When counter=0, count up by 1.
// When counter=1, count down by 1.
// This module is also a multiplexer. 
// When counter=0, assign 1 to out.
// When counter=1, assign 0 to out.

// Counter module
module counter_mux (
input [4:0] a, b,
input sel,
output [4:0] out );
// Counter is either 0 or 1.
// When counter=0, assign a to out.
// When counter=1, assign b to out.
// This module is also a multiplexer. 
// When counter=0, assign 1 to out.
// When counter=1, assign 0 to out.

// The design is to use theendmodule
