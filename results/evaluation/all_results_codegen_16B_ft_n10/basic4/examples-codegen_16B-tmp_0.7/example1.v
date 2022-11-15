// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// In this case, the output is not a direct function of the 
// input a or b. The output out can be a function of the 
// input sel.
// The reason for this is to utilize as many gates as 
// possible. In this case, we have a 2-to-1 mux that 
// can be represented as a 4-to-1 multiplexer.

assign out = sel ? b : a;
endmodule
