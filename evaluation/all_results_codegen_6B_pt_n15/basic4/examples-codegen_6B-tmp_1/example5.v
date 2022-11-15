// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always@(*) sel : 0;
always@(*) sel <= 2;
assign out[4:0] = a[4:0] when {sel=0};
assign out[4:0] = b[4:0] when {sel=1};
endmodule
