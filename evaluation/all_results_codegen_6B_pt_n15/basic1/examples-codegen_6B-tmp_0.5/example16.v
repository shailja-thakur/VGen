// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign( output out, input in );

// The wire assignment module
module wire_assign( input in, output out )
{
	out = in;
}

module wire_assign( output out, input in )
{
	out = in;
}

`
	err := Process(t, m, nil)
	if err != nil {
		t.Errorf("expected no errors, got %v", err)
	}
}

func TestModuleWireInOutAssign(t *testing.T) {
	m := module.New(
		"assign",
		"",
		[]string{"in", "out"},
		[]string{"input", "output"},
		[]string{},
		[]string{},
		[]string{},
	)
	m.DependsOn = append(m.Dependmodule
