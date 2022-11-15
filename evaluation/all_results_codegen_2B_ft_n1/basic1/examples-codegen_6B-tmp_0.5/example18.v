// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_in( input in, output out ) {
	out = in;
}

module wire_assign_out( input in, output out ) {
	out = in;
}

module wire_assign_inout( input in, output out ) {
	out = in;
}

module wire_assign_inout( input in ) {
	out = in;
}

module wire_assign_out_in( input in, output out ) {
	out = in;
}

module wire_assign_out_in( input in ) {
	out = in;
}

module wire_assign_out_inout( input in, output out ) {
	out = in;
}

module wire_assign_out_inout( input in ) {
	out = in;
endmodule
