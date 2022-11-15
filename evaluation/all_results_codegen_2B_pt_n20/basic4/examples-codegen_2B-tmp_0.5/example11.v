// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a and b to out. 
// When sel=3, assign a and b to out. 

// The following function is an example of a 4-to-4 multiplexer.
// It is used to demonstrate the design rules for multiplexers. 
// The function can be used to test the design rules of multiplexers. 
module mux4( 
input [4:0] a, b, c, d,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign c to out. 
// When sel=3, assign d to out. 
// When sel=4, assign a and b to out. 
// When selendmodule
