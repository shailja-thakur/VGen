// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a and b to out.

// Finally, output a and b.

reg [4:0] a_out;
reg [4:0] b_out;
assign a_out = a[sel];
assign b_out = b[sel];

endmodule
