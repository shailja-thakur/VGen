// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

module wire_assign_exported( out out, in in );
// exports out

module wire_assign_exported_in( out out, in in );
// exports out, in

wire_assign_exported_in_out( out out, in in );
// exports out and in

wire_assign_exported_in_out_out( out out, in in );
// exports out, in and out

wire_assign_exported_in_out_out_in( out out, in in );
// exports out, in, and in

wire_assign_exported_in_out_out_in_out( out out, in in );
// exports out, in, and in, out

wire_assign_exported_in_out_out_in_out_out( out out, in in );
endmodule
