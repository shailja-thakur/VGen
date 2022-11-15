// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
void assign( input in, output out );

// a function to read a wire
function wire_read( input in );
// read from in and return it
function read( input in );

// a function to write a wire
function wire_write( input in, output out );
// write to out from in
function write( input in, output out );

// a function to move a wire
function wire_move( input in, output out );
// move from in to out
function move( input in, output out );

module wire_module( input in, output out, input in_1, output out_1 );
// wire_module( input in, output out, input in_1, output out_1 );
// wire_module( input in, output out, input in_1, output out_1 );
// wire_module( input in, output out, input in_endmodule
