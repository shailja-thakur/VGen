// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// Each output is sel is not an output.
wire [4:0] mux_in0;
assign mux_in0 = sel? b : a;
assign out = mux_in0;
endmodule
