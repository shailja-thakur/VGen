// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

wire [4:0] c;

assign out[4:0] = a[sel];
assign out[4:0] = b[sel];

assign c[sel] = out[4:0];

endmodule
