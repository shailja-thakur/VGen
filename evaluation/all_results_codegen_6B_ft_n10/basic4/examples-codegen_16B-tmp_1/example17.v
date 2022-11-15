// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// If cin is 1 and sel is 1, use INT_MAX. ex( 20'b11111.xxxxxxxxxxxxxxx000 ) sel=1 cin=1 result=0001.0000000010000000
assign out = sel ? b : a;
endmodule
