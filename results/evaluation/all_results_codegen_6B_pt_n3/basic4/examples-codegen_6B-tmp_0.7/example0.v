// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always_comb sel_0 = { out <= a; };
always_comb sel_1 = { out <= b; };
`
	c := mux.NewMuxCtl()
	c.Set(0, 0, 0)
	c.Set(0, 0, 1)
	c.Set(0, 1, 0)
	c.Set(0, 1, 1)
	c.Set(1, 0, 0)
	c.Set(1, 0, 1)
	c.Set(1, 1, 0)
	c.Set(1, 1, 1)
	mux.Run(c)
	fmt.Println("Test 1")
	c.Set(0, 0, 0)
	c.Set(0, 0, 1)
	c.Set(0, 1, 0)
	cendmodule
