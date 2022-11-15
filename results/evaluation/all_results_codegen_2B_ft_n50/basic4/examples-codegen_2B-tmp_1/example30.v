// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When a or b are 0, assign 0 to out.

// There can be many ways to assign inputs to an output, usually one is just
// concatenation.
// Concatenation can also be defined with the concatenate instructions.
// see: https://en.wikipedia.org/wiki/Concatenation#Using_assign
assign out = (!sel && a) ? a :
	(sel && b) ? b : 
	0;

// There are two ways to define the order the vectors are concatenated in:
// assign matrix_out = vector_a * vector_b but matrix_out must be ordered first! 

// 2-to-1 multiplexer bordered by a speed�
// number of inputs: %1 = 4, %2= 5, ...
// number of outputs = current total numbers of outputs
// Selected outputendmodule
