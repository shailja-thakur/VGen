// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// Each output is sel is not an output.
wire [4:0] mux1;
wire [4:0] mux2;
wire [4:0] mux3;
wire [4:0] mux4;
mux mux1_0(a[0], b[0], sel[0], mux1[0], mux2[0], mux3[0], mux4[0]);
mux mux1_1(a[1], b[1], mux1[1], mux2[1], mux3[1], mux4[1], mux1[1]);
mux mux2_2(a[2], b[2], mux1[2], mux2[2], mux3[2], mux4[2], mux1[2]);
mux mendmodule
