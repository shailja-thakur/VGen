// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// in[0] is the sel input.
// in[1] is the a input.
// in[2] is the b input.
// in[3] is the out input.
assign out = (sel)? b:a;
endmodule
