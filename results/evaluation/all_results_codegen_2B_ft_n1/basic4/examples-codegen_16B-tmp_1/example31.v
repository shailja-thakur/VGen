// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// Note that the above sentence says nothing about the value of the output when it is not selected, 
// nor whether the non-selecting inputs are 0 to enable the output, nor whether there is a failure mode when there is more than 1. 
assign out = sel ? b : a; // This will work right if and only if it the output is only a boolean. 

endmodule
