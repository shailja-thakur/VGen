// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign 0 to out. 
// When sel=3, assign 1 to out. 
// When sel=4, assign 2 to out. 
// When sel=5, assign 3 to out. 
// When sel=6, assign 4 to out. 
// When sel=7, assign 5 to out. 
// When sel=10, assign 6 to out. 
// When sel=11, assign 7 to out. 
// When sel=14, assign 8 to out. 
// When sel=15, assign 9 to out. 
// When sel=16, assign 10 to out. 
// When sel=17, assign 11 to out. 
// When sel=18, assign 12 to out. 
// When sel=19, assign 13 to out. 
// Whenendmodule
