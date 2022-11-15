// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
reset wire_assign_to_reset( output out );
methods of output wire_assign_to_output( inference in );

implementation wire_assign_module( input in ) returns output out;

methods
{
  output wire_assign_to_input( inference in );
  reset wire_assign_to_reset();
};

definition wire_assign: module & wire_assign_out_io & wire_assign_in_io =
  output(out) <|
    wire_assign_to_input[inf_in] &| output out = in;

entity res_wire_assign_out_io = module ();
entity res_wire_assign_in_io = module ();
implementation res_wire_assign := module res_wire_assign_out_io & res_wire_assignendmodule
