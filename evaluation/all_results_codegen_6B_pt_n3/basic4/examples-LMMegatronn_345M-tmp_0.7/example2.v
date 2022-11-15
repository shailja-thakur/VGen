// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
wire [4:0] mux1;
wire [4:0] mux2;
wire [4:0] mux3;
mux mux_1(a[3:0], sel, mux1);
mux mux_2( mux1[3:0], sel, mux2[3:0]);
mux mux_3( mux2[3:0], sel, mux3[3:0]);
mux mux_4( mux3[3:0], sel, mux4[3:0]);
mux mux_5( mux4[3:0], sel, mux5[3:0]);
assign out = mux4[4] ? mux4[3:0] : mux4[3:0];
endmodule
