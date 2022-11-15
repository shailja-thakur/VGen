// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// For each input, there will be one output.
mux mux0(
.a(a[0]),
.b(b[0]),
.sel(sel),
.out(out[0])
);
mux mux1(
.a(a[1]),
.b(b[1]),
.sel(sel),
.out(out[1])
);
mux mux2(
.a(a[2]),
.b(b[2]),
.sel(sel),
.out(out[2])
);
mux mux3(
.a(a[3]),
.b(b[3]),
.sel(sel),
.out(out[3])
);
mux mux4(
.a(a[4]),
.b(b[4]),
.sel(sel),
.outendmodule
