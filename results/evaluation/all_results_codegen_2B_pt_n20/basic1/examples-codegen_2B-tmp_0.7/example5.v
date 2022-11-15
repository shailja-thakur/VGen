// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// Design a module that computes the inverse square root of a number
module inverse( input in, output out );
// compute out = 1.0 / in

// Design a module that computes the cube root of a number
module cube_root( input in, output out );
// compute out = in / sqrt(3)

// Design a module that computes the root of a number
module root( input in, output out );
// compute out = in ^ ( 1/3 );

// Create a module which uses the two modules above
module combine( input in1, input in2, output out );
// compute out = in1 + in2

// Create a module which uses the three modules above
module add( input in1, input in2, input in3, output out );
// compute out = in1 + in2 + in3

// Create a module which uses theendmodule
