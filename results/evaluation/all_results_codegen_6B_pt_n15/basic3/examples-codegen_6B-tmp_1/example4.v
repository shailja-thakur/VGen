// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
`);
	assert.NoError(t, err);
	s.exec("sel", inputs[0]);
	s.debug.PrintBipstream(out);
	firstPos := Pos{0};
	s.assertPosEq(t, firstPos, out);

	err = s.run(`
// Output: 
// pull out a bin, select its row, append it to our pos 
// leading bits govern the order of output on row 0 and row 1,
// with leading zeroes on row 2.
module position_reverser(
input [1:0] s_sel,
input reg [C:0] in,
output reg [1:0] out );
`);
	assert.NoError(t, err);
	s.exec("s_sel", inputs[1]);
	s.debug.PrintBipstream(outendmodule
