// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// * sel=2, assign out = sel? 

assign out = sel? b << a : a;
//assign out = sel? b << b : a;
endmodule
