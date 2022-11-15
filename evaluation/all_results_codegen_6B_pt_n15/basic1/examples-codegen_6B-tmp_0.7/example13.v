// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign( input in, output out ) {
	assign( out, in );
}

/*
 * Functions with ports
 */
// A module that reads from input and outputs to output
module input_output( input in, output out ) {
	assign( out, in );
}

// A module that reads from input1 and outputs to output1
module input_output1( input in1, output out1 ) {
	assign( out1, in1 );
}

// A module that reads from input1 and inputs to output1
module input_input1( input in1, input in2 ) {
	assign( in2, in1 );
}

// A module that reads from input1 and outputs to output1 and output2
module input_output2( input in1, output out1, output out2 ) {
	assignendmodule
