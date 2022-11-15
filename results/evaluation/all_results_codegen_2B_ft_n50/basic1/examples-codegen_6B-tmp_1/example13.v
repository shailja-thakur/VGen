// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
var wire_assign_2 = input;
// setup
wire_assign_2 = out;

function add_wire( FLAT, n1, n2, res ){	// return a wiretype of wire_assign_2 * n1 + n2
	var wiretype_input = n1 * wire_assign_2 * n2;
	var wiretype_output = wiretype_input;
	return wiretype_output;
}

// experiment with flatwire and wire
var flatten = add_wire( FLAT, "11111111", 1, "11000000");
*/

Searching with flat wire types }
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Flattened 0 Wire (f*) = { // flatten wire_assign_2
										 // flatten wire_assign_2 yields
										 // flatwire of wire_endmodule
