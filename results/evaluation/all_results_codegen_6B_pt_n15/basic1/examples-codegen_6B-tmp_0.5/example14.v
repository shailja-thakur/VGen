// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_inout( input in, output out ) {
  wire_assign( in, out );
}

// Design a module that assigns the output to the input
module wire_assign_in_out( input in, output out ) {
  wire_assign_inout( in, out );
}

// Design a module that assigns the output to the input
module wire_assign_in_out_out( input in, output out ) {
  wire_assign_in_out( in, out );
}

// Design a module that assigns the output to the input
module wire_assign_in_out_in( input in, output out ) {
  wire_assign_in_out( in, out );
}

// Design a module that assigns the output to the input
module wire_assign_in_out_endmodule
