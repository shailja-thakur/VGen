// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );

// Design a module that performs an addition
module adder( input in1, input in2, output out );
// add in1 and in2
adder( in1, in2, out );
// assign the output to the input
adder( out, in1, in2 );

// Design a module that performs a subtraction
module subtractor( input in1, input in2, output out );
// subtract in1 and in2
subtractor( in1, in2, out );
// assign the output to the input
subtractor( out, in1, in2 );

// Design a module that performs a multiplication
module multiplier( input in1, input in2, output out );
// multiply in1 and in2
multiplier( in1, in2, out );
// assign the output to the input
multiplier( outendmodule
