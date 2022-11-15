// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

wire out[2:0];

mux mux_1(
  .a(a[3:0]),
  .b(b[3:0]),
  .sel(sel[3:0]),
  .out(out[3:0])
);

mux mux_2(
  .a(a[3:0]),
  .b(b[3:0]),
  .sel(sel[3:0]),
  .out(out[2:0])
);

endmodule
