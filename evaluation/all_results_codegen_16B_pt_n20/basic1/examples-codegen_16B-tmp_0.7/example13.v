// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out ); // equivalent to: wire_assign( in, in );
// assign out to in, and in to out
wire_assign( in, out, in ); // equivalent to: wire_assign( in, in, out );

// Design a module that copies the input to the output
module wire_copy( input in, output out );
// copy in to out
wire_copy( in, out ); // equivalent to: wire_assign( in, in );
// copy in to out, and in to out
wire_copy( in, out, in ); // equivalent to: wire_assign( in, in, out );

// Design a module that adds the input to the output
module wire_add( input in, output out );
// add in to out
wire_add( in, out ); // equivalent to: wire_assign( inendmodule
