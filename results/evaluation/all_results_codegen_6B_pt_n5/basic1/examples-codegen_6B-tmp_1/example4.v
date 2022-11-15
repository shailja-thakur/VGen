// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
function wire_assign( out, in ) { out[0] = in[0]; }

//-----------------------------------------------------------------------------
function header_template()
{
	return ""
		"#include \"custom_parameter.h\"\n"
		"input wire pushed_in;\n"
		"output hlsl_io out;\n"
		"always @("
		"  \"clk\"",
		"  ",
		"  in_r",
		"  and",
		"  \"clk\"",
		"  and",
		"  (in_r=1)",
		"  or",
		"  \"clk\",",
		"  out_w",
		"?\n"
		"  in_t",
		"  or",
		"  (pushed_in=1)",
		")\endmodule
