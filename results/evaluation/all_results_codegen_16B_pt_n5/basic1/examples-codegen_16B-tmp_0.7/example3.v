// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );
// assign in to out
wire_assign( in, out );
// Assign the output to the input
// the input is not assigned to anything.

// A module that has a single input and output
module single_to_single( input in, output out );
// the output is assigned to the input
single_to_single( in, out );
// the input is assigned to the output
single_to_single( in, out );
// Assign the output to the input
// the input is not assigned to anything.

// A module that has three inputs and one output
module triple_to_single( input a, input b, input c, output out );
// assign out to a
triple_to_single( a, b, c, out );
// assign out to b
triple_to_single( a, bendmodule
