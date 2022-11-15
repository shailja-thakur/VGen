// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// If you don't know if a or b are 0 or 1,
// then x=!a&&!b to get the desired output.
assign out=(sel==0) ? a:b;
endmodule
