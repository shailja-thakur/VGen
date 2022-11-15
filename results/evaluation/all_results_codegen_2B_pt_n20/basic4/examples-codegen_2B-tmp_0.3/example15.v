// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

wire [4:0] c;

wire [4:0] d;

mux mux_1(
a, b,
sel,
c,
d
);

mux mux_2(
a, b,
sel,
c,
d
);

mux mux_3(
a, b,
sel,
c,
d
);

mux mux_4(
a, b,
sel,
c,
d
);

mux mux_5(
a, b,
sel,
c,
d
);

mux mux_6(
a, b,
sel,
c,
d
);

mux mux_7(
a, b,
sel,
c,
d
);

mux mux_8(
a,endmodule
