// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );

// Design a module that adds two inputs
module add( input a, input b, output carry, output c, output d );
// assign carry and d to c
add( a, b, carry, c, d );
// assign carry to carry and d to d
add( a, b, carry, c, d );

// Design a module that multiplies an input by a constant
module mul( input in, input k, output out );
// Multiply in by k
mul( in, k, out );

// Design a module that sums the inputs
module add_sum( input a, input b, output out );
// sum b and a
add_sum( a, b, out );
// sum b and -a
add_sum( a, b, out );

// Design a module that sums the inputs
module mulendmodule
