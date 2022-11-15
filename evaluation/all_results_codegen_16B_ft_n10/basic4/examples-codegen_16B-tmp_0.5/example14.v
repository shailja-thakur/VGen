// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// The output is an array, so we cannot use a case statement. 
// Instead, we use a conditional operator to handle the 
// two cases (sel=0 and sel=1). 
assign out = sel ? b : a; 
endmodule
