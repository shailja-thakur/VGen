// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module assign_out( input in ) {
  out <= in;
}

// The input module takes non-equally spaced values from 0 to N-1, and outputs
// the sum of the input values.
// Note: The output of the sum module is assigned to the output of the input
// module, which is a wire.
module add( input in, output out, int N ) {
  out <= sum( in );
  output_list[0] <= in(N-1);
  output_list[1] <= in(N-2);
  output_list[2] <= in(N-3);
  output_list[3] <= in(N-4);
  output_list[4] <= in(N-5);
  output_list[5] <= in(N-6);
  output_list[6] <= in(Nendmodule
