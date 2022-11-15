// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_out_to_in( input in, output out ) {
  wire_assign( in, out );
}

module wire_assign_out_to_in_2( input in, output out ) {
  wire_assign_out_to_in( in, out );
}

module wire_assign_out_to_in_3( input in, output out ) {
  wire_assign_out_to_in_2( in, out );
}

module wire_assign_out_to_in_4( input in, output out ) {
  wire_assign_out_to_in_3( in, out );
}

module wire_assign_out_to_in_5( input in, output out ) {
  wire_assign_out_to_in_4(endmodule
