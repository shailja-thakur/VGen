// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
out = in;

// The module wire_assign contains a single module wire_assign_in
// and a single module wire_assign_out.
//
// The module wire_assign has two ports, wire_assign_in and
// wire_assign_out, and two connections, wire_assign_in_out_1 and
// wire_assign_in_out_2.
//
// wire_assign_in connects to wire_assign_in_out_1, and wire_assign_out
// connects to wire_assign_in_out_2.
//
// These connections are logical, and are made apparent by the
// fact that they are contained within the module.
//
// The module wire_assign_in and wire_assign_out contain the same
// module wire_assign_in_out_1endmodule
