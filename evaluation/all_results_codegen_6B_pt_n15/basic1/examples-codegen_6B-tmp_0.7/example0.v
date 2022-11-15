// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign2( input in, output out ) {
  out <= in;
}

// Different types of wire assignments
module wire_assign_int_out_int_in( input in, output out ) {
  out <= in;
}

module wire_assign_string_out_string_in( input in, output out ) {
  out <= in;
}

// Use wire assign with a function
module wire_assign_mem_int_out_int_in( input in, output out ) {
  out <= wire_assign(in, x);
}

module wire_assign_int_out_int_in( input in, output out ) {
  out <= out;
}

module wire_assign_int_out_int_in( input in, output out ) {
  out <= in;
endmodule
