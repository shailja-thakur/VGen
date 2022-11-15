// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a to out. 
// When sel=3, assign b to out. 

wire [3:0] c;

mux mux_1(
a, b,
sel,
out );

mux mux_2(
c,
sel,
out );

mux mux_3(
a, c,
sel,
out );

mux mux_4(
b, c,
sel,
out );

mux mux_5(
a, b, c,
sel,
out );

mux mux_6(
a, b, c, d,
sel,
out );

mux mux_7(
a, b, c, d, e,
sel,
out );

mux mux_8(
aendmodule
