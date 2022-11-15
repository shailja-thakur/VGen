// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// to implement
module wire_assign( int[] in_fields, input[] out_fields );
// as
module wire_assign( int[][] in_fields, input out_fields[ ] );
endmodule
