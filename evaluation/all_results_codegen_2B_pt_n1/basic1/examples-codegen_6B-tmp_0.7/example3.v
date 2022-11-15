// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign2( input in, output out );

// wire_assign wire_assign2 wire_assign( input in, output out );
// wire_assign wire_assign2( input in, output out );

// The wire_assign module does not export a wire.
wire_assign() -> out;
// The wire_assign module does not export another wire.
wire_assign2() -> out;
// The wire_assign module does not export a wire.
wire_assign2() -> out;

// The wire_assign module does not export another wire.
//wire_assign2() -> out;

// The module wire_assign does not export a wire.
out = in;
// The module wire_assign does not export another wire.
out = in;
// The module wire_assign doesendmodule
