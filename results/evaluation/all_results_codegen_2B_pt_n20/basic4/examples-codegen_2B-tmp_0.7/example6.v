// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a and b to out. 

// Design a 4-to-1 multiplexer.
module mux4(
input [4:0] a, b, c, d,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign c to out. 
// When sel=3, assign d to out. 

// Design a 2-to-2 multiplexer.
module mux2(
input a, b,
input sel1, sel2,
output [2:0] out1, out2 );
// When sel1=0, assign a to out1. 
// When sel1=1, assign b to outendmodule
