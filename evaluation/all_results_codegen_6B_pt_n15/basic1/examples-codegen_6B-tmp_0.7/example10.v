// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign( in, out );
`

func TestWire_assign(t *testing.T) {
	verifyTest(t, sink, "{input=1, output=1}")
}

const wire_assign_1 = `
module wire_assign_1( input in, output out );
// assign out to in
wire_assign_1( in, out );
`

func TestWire_assign_1(t *testing.T) {
	verifyTest(t, sink, "{input=1, output=1}")
}

const wire_assign_2 = `
module wire_assign_2( input in, output out );
// assign out to in
wire_assign_2( in, out );
`

func TestWire_assign_2(t *testing.T) {
endmodule
