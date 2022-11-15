// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, do nothing. 
// When sel=3 assign a to out. 
assign out[0] = a[0]; // sel=0
assign out[1] = a[3]; // sel=1
assign out[2] = a[0]; // sel=2
assign out[3] = a[3]; // sel=3

endmodule
