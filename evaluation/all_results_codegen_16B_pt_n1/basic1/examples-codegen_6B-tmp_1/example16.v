// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_nat( input in, output out ) {
  out := in;
}

module wire_assign_handlu1( input in_to_out, output out_incremented,
                            input in_incremented, output out_decremented ) { 
  out_incremented:= in_incremented + in_to_out;
  out_decremented:= in_incremented - in_to_out;
}

module wire_assign_challp( input in_to_out, output out_incremented, 
                           input in_incremented ) { 
  out_incremented:= in_incremented + in_to_out;
}

module wire_assign_gates1( input in_to_out, output out_always_1 ) {
  out_always_1:= ~endmodule
