// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
assign out = (sel==0) ? a : b; 


module mux_full( 
input [8:0] a, b,
input sel,
output [8:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
assign out = (sel==0) ? a : b; 

// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
assign out = (sel==0) ? a : b; 


module mux_2to1( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign bendmodule
