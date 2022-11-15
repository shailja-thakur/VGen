// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a&b to out. 
// When sel=3, assign a|b to out. 
// When sel=4, assign a^b to out. 
// When sel=5, assign a&b|a^b to out. 
// When sel=6, assign a&b^a^b to out. 
// When sel=7, assign a^b&a^b to out. 
assign out = { a[3:0], sel }
endmodule
