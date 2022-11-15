// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
assign out[0] = sel ^ a[0];
assign out[1] = sel ^ a[1];
assign out[2] = sel ^ a[2];
assign out[3] = sel ^ a[3];
assign out[4] = sel ^ a[4];
endmodule
