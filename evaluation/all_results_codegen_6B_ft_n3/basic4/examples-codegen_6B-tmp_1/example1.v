// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
//when sel is a input, we should not assign a or b as output
// since that will render the output a=b, outs=sel
assign out=sel?b:a;
endmodule
