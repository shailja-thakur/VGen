// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// The first two of the four bits specify the four selectors that will be needed; 
// they are summed into sel, 
// with the operation (sel+1)*2
// Modify the Multiplexer network so that i is updated only when sel changed from 
// ~input0 to input0, and so on, and construct a simple set-assign function.
assign out = (sel==0)?a:b;

always @(posedge clk)
	if ((sel <= 3) && !(a & ~(sel-1))) assert((sel + 1)*2) else if ((sel <= 3) && (sel > 0)) assert((sel + 1)*2) else ;
	
// If sel=0, then the original input i matched track a and out is assigned a
// If sel=1, then the original input i matched track b andendmodule
