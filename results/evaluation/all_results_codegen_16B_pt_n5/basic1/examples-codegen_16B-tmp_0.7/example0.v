// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out ) = 1;

// Design a module that performs tranformation of input to output
module wire_transform( input in, output out );
// Transform in to out using bitwise or
wire_transform( in, out ) = in | out;

// Design a module that performs a bitwise not 
module wire_not ( input in, output out );
// Bitwise not of in
wire_not( in, out ) = ~in;

// Design a module that performs a relational comparison
module wire_compare( input a, input b, output out );
// Compares a and b using '=='
wire_compare( a, b, out ) = a == b;
// Compares a and b using '<'
wire_compare( a, b, out ) = a < b;
// Compares a and b using 'endmodule
