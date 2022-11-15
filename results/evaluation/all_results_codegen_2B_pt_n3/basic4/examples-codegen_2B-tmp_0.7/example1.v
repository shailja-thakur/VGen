// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always @( posedge clk )
{
	// Use the output to assign a to b.
	if( sel == 0 )
		b = a;
	else
		a = b;
}

// The input signals are always connected.
// When posedge clk, assign the input signal to the bottom of the first register.

// Use the output signals to assign a to b.
module mux_2( 
input [4:0] a, b,
input sel,
output [4:0] out );

always @( posedge clk )
{
	// Use the output to assign a to b.
	if( sel == 0 )
		b = a;
	else
		a = b;
}

// Design a 2-to-2 multiplexer.
module mux_2_2( endmodule
