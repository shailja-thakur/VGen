// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );
// or
wire_assign( in, out, 3 );

// Chain a module
module wire_chain( output out, input in );
// chain out to in
wire_chain( out, in );
// or
wire_chain( out, in, 3 );

// Add a module
module wire_sum( input in, output out );
// add in to out
wire_sum( in, out );
// or
wire_sum( in, out, 3 );

// Add a constant to a module
module wire_sum_const( input in, output out, const int c );
// add in to out
wire_sum_const( in, out, 3 );

// Subtract a module
module wire_diff( input in, output out );
// subtract in from out
wire_diff( in, out );
endmodule
