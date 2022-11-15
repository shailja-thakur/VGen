// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// */

wire [4:0] mux_in0;
mux mux0(a[0], b[0], sel, mux_in0);
mux mux1(a[1], b[1], mux_in1);
mux mux2(a[2], b[2], mux_in2);
mux mux3(a[3], b[3], mux_in3);
mux mux4(a[4], b[4], mux_in4);

assign out = mux_in0;

endmodule
