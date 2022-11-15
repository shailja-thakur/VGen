// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
reg [4:0] out;
always @( 
	                                                                                                                                                                  
always @(sel or in0 or in1 or in2 or in3 or sel)
endmodule
