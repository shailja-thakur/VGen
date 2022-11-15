// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out ).out = in;

// Design a module that converts the input to the output
module wire_convert( input in, output out );
// convert out to in
wire_convert( in, out ).out = out;

// Design a module that adds the output to the input
module wire_add( input in, output out );
// add the output to the input
wire_add( in, out ).out = out + in;

// Design a module that subtracts the output from the input
module wire_subtract( input in, output out );
// subtract the output from the input
wire_subtract( in, out ).out = out - in;

// Design a module that multiplies the output by the input
module wire_multiply( input in, output out );
// multiply the output by the input
wire_multendmodule
