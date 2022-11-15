// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// Each mux is the mux, invert the mux.
wire mux_invert;
assign mux_invert = (a[sel] == 0)? mux_invert : 1'b0;
// Each mux is the mux, invert the mux.
assign out = mux_invert ? mux_in : mux_in;
endmodule
