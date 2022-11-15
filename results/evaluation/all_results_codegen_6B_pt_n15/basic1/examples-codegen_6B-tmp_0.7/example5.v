// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign( output out, input in ) {
  out <= in;
}

module test_assign( input i_in, output o_out, output o_in )
  input o_in;
  output o_out;
  input i_out;

  assign( o_out, i_in );
  assign( o_in, i_out );
  assign( i_in, i_out );
  assign( i_out, i_in );
  assign( o_out, i_out );
  assign( o_out, i_in );
  assign( i_out, i_in );
  assign( i_out, i_in );
  assign( i_out, i_in );
  assign( o_out, i_out );



// Designendmodule
