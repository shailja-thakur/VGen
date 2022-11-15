// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
out[0] = in[0];
*/

export default function wire_assign( input , output ) {

	assert( input.length >= 0, "should provide at least one device index" );
	assert( output.length >= 0, "should provide at least one device index" );

	assert( ( input.length === 0 ) || ( input.length === output.length ), "got unequal arrays" );

	output[0] = input[0];

	return true;
}
endmodule
