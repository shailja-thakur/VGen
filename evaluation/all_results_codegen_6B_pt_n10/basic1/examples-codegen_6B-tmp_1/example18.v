// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
out = in;

// Brief problem definition.  Must contain module definitions
// and inline function definitions in this program
module test_module( out ) = wire_assign( input in, output out);

function main() endif;
// compute test values
out = in = 1;
test_module( out );
// do good test!
endmodule
