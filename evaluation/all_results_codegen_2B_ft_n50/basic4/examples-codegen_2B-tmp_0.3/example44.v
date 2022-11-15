// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// The output is a 4-bit multiplexer.
// The output is assigned to out[4:0]
// The output is assigned to out[4:0]
assign out[4] = sel;
assign out[3] = sel;
assign out[2] = sel;
assign out[1] = sel;
assign out[0] = sel;
endmodule
