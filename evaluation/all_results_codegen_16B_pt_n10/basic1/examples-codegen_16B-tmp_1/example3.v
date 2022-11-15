// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
void wire_assign( input_type in, output_type out ) 
{ 
	assert( in != null && out != null );

	// code goes here
	out = in; 
}


// Design a module that prints an argument
module wire_print( input_type in, output_type out  );

void wire_print( input_type in, output_type out )	// Not a module
{
    assert( in != null && out != null );

    // code goes here

	out = in.val;

    // Code goes here
}


// ----------------------------------------
// CLASS PRINT_MACRO
// ----------------------------------------
// Create print_macro and wire the generate_line string to the IN port
STRING_MACRO( " we are from line ", wire_print , IN )











endmodule
