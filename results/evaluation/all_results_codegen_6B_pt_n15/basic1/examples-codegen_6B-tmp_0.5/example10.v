// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign( output out, input in );

// module to generate a signal
module wire_gen( output out, input in );

// module to demux a signal
module wire_demux( input in, output out1, output out2 );

// module to merge two signals
module wire_merge( input in1, input in2, output out );

// module to unmerge two signals
module wire_unmerge( input in1, input in2, output out );

// module to split a signal
module wire_split( input in, output out1, output out2 );

// module to uniquify a signal
module wire_uniquify( input in, output out );

// module to gate a signal
module wire_gate( input in, output out, input in2 );

// module to gate a signal
module wire_gateendmodule
