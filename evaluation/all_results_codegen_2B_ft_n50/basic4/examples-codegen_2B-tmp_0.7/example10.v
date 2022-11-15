// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// For a and b, 0 represents X and 1 represents 0.
// For out, 0 represents 0 and 1 represents X.
assign out[0] = !sel & a[0] | sel & b[0];
assign out[1] = !sel & a[1] | sel & b[1];
assign out[2] = !sel & a[2] | sel & b[2];
assign out[3] = !sel & a[3] | sel & b[3];
assign out[4] = !sel & a[4] | sel & b[4];
endmodule
