// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign out( in );
// assign out to in
wire_assign out = in;
// assign out to in
wire_assign out = in = 0;

// Design a module that performs a simple addition
module add( input a, input b, output sum );
// add a and b
add sum( a, b );
// add a and b
add sum = a + b;
// add a and b
add sum = a + b = 0;

// Design a module that performs a simple subtraction
module sub( input a, input b, output diff );
// subtract a and b
sub diff( a, b );
// subtract a and b
sub diff = a - b;
// subtract a and b
sub diff = a - b = 0;

// Design a module that performs a simple multiplication
module mul( input a, input b, output prodendmodule
