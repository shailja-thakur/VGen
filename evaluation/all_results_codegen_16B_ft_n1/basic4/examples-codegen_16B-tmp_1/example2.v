// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

	not sel1b (selb,sel); // invert input select
	and (outb0, selb, a[4]) ; // out = b when sel=0
	and (outb1, sel, b[4]) ; // out = a when sel=1
	or (out, outb0, outb1); // out = either b or a

endmodule
