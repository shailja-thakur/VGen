// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
wire c [4:0], snot [4:0];
assign c[0] = a[0] & ~sel;
assign c[1] = a[1] & ~sel;
assign c[2] = a[2] & ~sel;
assign c[3] = a[3] & ~sel;
assign c[4] = a[4] & ~sel;
assign snot[0] = b[0] & sel;
assign snot[1] = b[1] & sel;
assign snot[2] = b[2] & sel;
assign snot[3] = b[3] & sel;
assign snot[4] = b[4] & sel;
assign out[0] = c[0] | snot[0];endmodule
