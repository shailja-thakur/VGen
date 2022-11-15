// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_out_to_in( input in, output out );
`

func TestCompilerWireAssign(t *testing.T) {
	c := NewCompiler()
	var m Module
	m.Compile([]byte(testModule))
	if m.Err() != nil {
		t.Fatalf("failed to compile module: %v", m.Err())
	}
	if len(m.Wires) != 9 {
		t.Fatalf("module has wrong number of wires: %d", len(m.Wires))
	}
	if !reflect.DeepEqual(m.Wires[0], Wire{
		Src: 0, Dst: 0, WireType: "output", WireDir: "in",
	}) {
		t.Fatalf("bad wire: %#v", m.endmodule
