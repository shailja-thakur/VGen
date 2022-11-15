// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign( wire in, wire out );
// assign out to in
module isi_assign( det isi, wire out );
// auto-generate code for wire_assign and wire_assign
// Table of connections to be made:
// lhs: input at row, col, in_unused
// rhs: output at row, col, out_unused
// Note: rows are away from package edge
// Note: cols to the right of package edge (idx=1)
// output starts at out_unused+1. If wire_assign, then out_unused==0


// Write the input and target nets
module top(
    input  i_strbs, // all
    input  last, // last buffer input
    input  strb, // current signal
    input  i_req_vld, // request validendmodule
