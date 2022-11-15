// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign.outputs(17,12,8);
// end  wire_assign module

	// More code ...



//---------------------------------------------------------------------
// remove array
//---------------------------------------------------------------------
// Implement a function that removes the first element from an array
/**/
array_remove( input   array[in],    output  out,     int    length )
	/**/
{
	// Remove the first element in the array and return its output
	array[out] = array[0];
	out++;

	// Decrement the length counter
	length--;

	// Iterate from the 1st to nth element
	for( int i=1; i<=length; i++ )
		array[i-1] = array[i];
}


//-------------------------------------------------------------------------
// overload operators !
//-------------------------------------------------------------------------
// Implement the overloaded operators <, !=, ! ( <endmodule
