// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( input in, output out ) {
in <= out;
}

// Design a module that reads a value from input and outputs the 
// value to output
module wire_read( input in, output out );
// read in value and output it
wire_read( input in, output out ) {
out <= in;
}

// Design a module that reads a value from input and outputs the 
// value to output
module wire_read_and_assign( input in, output out );
// read in value and output it
wire_read_and_assign( input in, output out ) {
out <= in;
}

// Design a module that reads a value from input and outputs the 
// value to output
module wire_read_and_assign( input in, output out, logic a );
// read in value and output it
wireendmodule
