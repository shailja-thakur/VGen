// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// de-assign from in
// assign in to out
void foo( input in, output out, unsigned int n )
{
 // assign out to in
wire_assign( in, out );
 // assign in to out
input = out( n ); // deduce in = out & out = in
out( n ) = in;        // in = out & in = out
}

endmodule
