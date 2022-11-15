// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign.assign( in, out );
// assign output to wire in
wire_assign.assign( out, in );

// Design a module that reads the output from the input
module wire_read( input in, output out );
// read out from in
wire_read.read( in, out );
// read out from wire in
wire_read.read( out, in );

// Design a module that reads the output from the input
module wire_write( input in, output out );
// write out to in
wire_write.write( in, out );
// write out to wire in
wire_write.write( out, in );

// Design a module that reads the output from the input
module wire_destination( input in, output out );
// read out from in
wire_destination.destination( in, out );
// readendmodule
