// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a AND b to out. 
// When sel=3, assign a OR b to out. 
reg [3:0] out;
assign out = (sel == 0 ? a : sel == 1 ? b : a | b);
endmodule
