// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_out_to_in( input in, output out ) {
	out <= in;
}
// assign out to in, but keep out's output value
module wire_assign_out_to_in_keep_out( input in, output out ) {
	out <= in;
	out_keep_value <= out;
}

// wire_assign_keep_out_to_in
// wire_assign_out_to_in_keep_out
// wire_assign_out_to_in_keep_out_keep_out
// wire_assign_out_to_in_keep_out_keep_out_keep_out

// wire_assign_out_to_in_keep_out_keep_out_keep_out_out
// wire_assign_out_to_in_keep_outendmodule
