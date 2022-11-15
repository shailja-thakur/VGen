// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_i( input in, output out )
{
	out = in;
}

// design module:
// assign output to input using an array
module wire_array_assign( input in[], output out[] )
{
	for( int i=0; i<input_width; i++ )
		out[i] = in[i];
}

// assign output to input using a parameter
module wire_param_assign( input in, output out )
{
	out = in;
}

// design module:
// assign output to input using a struct
module wire_struct_assign( input in, output out )
{
	out = in;
}

// design module:
// assign output to input using an array
module wire_array_assign_i( input in[], output out[] )
{endmodule
