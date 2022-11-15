// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a to out. 
// When sel=3, assign b to out. 
assign out = (sel==0) ? a : (sel==1) ? b : (sel==2) ? a : b;

// Design a 2-to-1 demultiplexer.
module demux( 
input [4:0] a, b,
output [4:0] out );
// When a=0, assign b to out. 
// When a=1, assign b to out. 
// When a=2, assign b to out. 
// When a=3, assign b to out. 
assign out = (a==0) ? b : (a==1) ? b : (a==2) ? b : b;

// Design a 2-to-1 multiplexer.
endmodule
