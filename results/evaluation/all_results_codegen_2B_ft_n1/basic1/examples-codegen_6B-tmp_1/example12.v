// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_4( input in );
// in blocks the output of wire_assign_4 as input to input_a
module wire_assign_4_2( input in );
// in blocks the output of wire_assign_4 as input to input_b
module wire_assign_4_3( input in );
// in blocks the output of wire_assign_4 as input to input_c
module* wire_assign_4_b( input in );
// unblock wire_assign_4

module* wire_assign_4_out = 0;
// the module
module wire_assign_4_int( input in )
{
  in == 1 ? input_a : input_d;
  in == 2 ? input_b : input_d;
  in == 3 ? input_c : input_d;
  endmodule
