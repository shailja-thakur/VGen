// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// out[4] is carry across
// out[0] is zero
assign out[0] = 0;
// out[7:5] and out[4:1] are selector bits for what to do.
assign out[4:1] = {sel, a[4], a[3], a[2], a[1], a[0]};
assign out[5] = 0;
endmodule
