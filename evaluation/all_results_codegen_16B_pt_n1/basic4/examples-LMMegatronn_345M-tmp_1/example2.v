// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// * #5 is asserted, and the output becomes 'x' so that the
// has allones are active
/*
mux2 mux_in0( .a(a[0]), .b(b[0]), .sel(sel), .y(out[0]) );
mux2 mux_in1( .a(a[1]), .b(b[1]), .sel(sel), .y(out[1]) );
mux2 mux_in2( .a(a[2]), .b(b[2]), .sel(sel), .y(out[2]) );
mux2 mux_in3( .a(a[3]), .b(b[3]), .sel(sel), .y(out[3]) );
mux2 mux_in4( .a(a[4]), .b(b[4]),endmodule
