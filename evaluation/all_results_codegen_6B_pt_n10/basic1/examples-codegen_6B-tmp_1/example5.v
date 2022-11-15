// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign2( input in, output out );

// Each module must be a validator to determine if it should be
// evaluated.  Only inputs connected to input "wire_in" of the first
// wire_assign should be used.  All modules must be executed in
// parallel.
//
// After the initial wire assignment, train the pipeline and reach Max
// Output Points at end of computation.
module wire_train1( input wire_in, output wire_out_1,
		    output wire_out_2, output wire_out_3, output wire_out_4 );

// Assign the output to a wire on the cpu
module m1( input in ) {
  output wire_out = in;
}

//Train the pipeline by setting some pipelined construct(s) to a specific value.
module m2( input in, output outendmodule
