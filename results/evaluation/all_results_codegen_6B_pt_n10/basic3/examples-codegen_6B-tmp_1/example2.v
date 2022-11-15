// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk or negedge i)
  if (sel) pos <= cPRESS <= cZERO;
// The inputters don't know which pins are assigned to them.
// We could specify the pins from a dedicated priority encoder,
// but we'll set up the pins to the inputter directly, meaning
// it's simpler to do the following:
always @ (posedge clk or negedge i)
  begin
    input[0] <= a <= input[1];
  end
end
`
	res := computeRoute(grammar, TEST_PIN_1)

	assert.Equal(t,
		[]byte{
			0x00,
			0x00},
		res.Final)

	assert.Equal(t, []byte{0x08, 0x01}, res.Route[len(res.Route)-1].endmodule
