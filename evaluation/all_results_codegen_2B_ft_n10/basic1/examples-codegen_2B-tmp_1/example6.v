// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign out=in;
// end module
/*
 * Design a 3-tiered ALU whose outputs are:
 * An addition over 64 bit unsigned
 * a AND over 64 bit unsigned and
 * a logic OR over 64 bit unsigned
 * sign extend arithmetic
 * a special case if all 64 bit are zeros
 */
module main ( output b_patched, output ierr,
	output [7:0] ann_control, output [2:0] addr_control,
	output [7:0] data_write_high_length,
	output [7:0] data_write_low_length,
	output [47:0] data_write_default, output [7:0] comp_length,
	output [7:0] pcs_size, output [7:0] ann_size,
	output [7:0] view_size, outputendmodule
