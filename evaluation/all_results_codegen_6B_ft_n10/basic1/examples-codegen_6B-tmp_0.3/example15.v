// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_out( input out ) {
  assign( out, in );
}

// Design a module that adds the input to the output
module wire_add( input in, output out );
// add the input to the output
module wire_add_out( input out ) {
  add( out, in );
}

// Design a module that adds the input to the output
module wire_add_const( input in, output out, int c ) {
  add( out, in + c );
}

// Design a module that adds the input to the output
module wire_add_const_out( input out, int c ) {
  add( out, in + c );
}

// Design a module that adds the input to the output
module wire_add_const_in( input in, output out, int c ) {
  add(endmodule
