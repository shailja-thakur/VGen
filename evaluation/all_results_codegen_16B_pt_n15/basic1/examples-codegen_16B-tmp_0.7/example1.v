// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );
// assign f to in
wire_assign( f, in );

// Design a module that extracts a single bit from the input
module bit_extract( input in, bit out );
// extract the 3rd bit of in and assign it to out
bit_extract( in, out );
// extract the 2nd bit of in and assign it to out
bit_extract( in, out, 2 );
// extract the 3rd bit of in and assign it to out
bit_extract( in, out, 2, 3 );
// extract the 2nd bit of in and assign it to out
bit_extract( in, out, 2, 1 );
// extract the 2nd bit of in and assign it to out
bit_extract( in, out, 2, 3, 1 );
// extract the 2nd bit of in and assign itendmodule
