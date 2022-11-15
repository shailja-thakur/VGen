// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign !a to out. 
// When sel=3, assign !b to out. 


// The following logic is used to construct a 2-to-1 multiplexer. 
// The sel input to mux is used to select the output that is 
// connected to the input a or b. The input a or b is selected by 
// passing the input sel to the mux_sel function. 
// Assume that sel is an array of 4 elements. 


// mux_sel returns the value of sel[3:0] (assume that sel[3:0] has 4 bits) 
// If sel[3:0]==0, return a=0, b=1. 
// If sel[3:0]==1, return a=1, b=0. endmodule
