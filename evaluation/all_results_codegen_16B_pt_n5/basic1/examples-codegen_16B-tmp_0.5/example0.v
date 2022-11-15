// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );

// Design a module that copies its input to its output
module wire_copy( input in, output out );
// copy in to out
wire_copy( in, out );

// Design a module that copies its input to its output
module wire_copy_with_delay( input in, delay_3ns out );
// copy in to out with delay of 3ns
wire_copy_with_delay( in, out );

// Design a module that copies its input to its output
module wire_copy_with_delay_and_delay( input in, delay_3ns out, delay_3ns in2 );
// copy in to out with delay of 3ns, and input2 with delay of 3ns
wire_copy_with_delay_and_delay( in, out, in2 );

// Design a module that copies its input to itsendmodule
