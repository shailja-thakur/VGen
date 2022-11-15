// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign( output out, input in );

// The test harness will be able to extract the output of wire_assign
// as the input to wire_assign_2.
//
// The test harness will be able to extract the output of wire_assign_2
// as the input to wire_assign_3.
//
// The test harness will be able to extract the output of wire_assign_3
// as the input to wire_assign_4.

// wire_assign_2( input i, output o ) input( i ); output( o );
// wire_assign_3( input i, output o ) input( i ); output( o );
// wire_assign_4( input i, output o ) input( i ); output( o );
module wire_assign_2( input i, output o ) input( i );endmodule
