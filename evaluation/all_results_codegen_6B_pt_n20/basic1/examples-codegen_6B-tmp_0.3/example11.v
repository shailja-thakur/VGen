// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_out_to_in( input in, output out ) {
    out = in;
}
`

func TestWireAssign(t *testing.T) {
	// This test is a bit complicated, but it tests a lot of things.
	// - Wire assigns are not in the same block as the input.
	// - Wire assigns are not in the same block as the output.
	// - Wire assigns are not in the same block as the module.
	// - Wire assigns are not in the same block as the module.
	// - Wire assigns are not in the same block as the module.
	// - Wire assigns are not in the same block as the module.
	// - Wire assigns are not in the same block as the module.
	// - Wire assigns are not in the same block as the module.
	// - Wire assigns are not in theendmodule
