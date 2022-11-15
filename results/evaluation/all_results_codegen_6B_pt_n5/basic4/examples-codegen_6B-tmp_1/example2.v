// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @ (posedge clk or negedge select_output ) select_output@(sel'd0) 
{
out[0](a[0]);
out[1](b[0]);
out[2](a[1]);
out[3](b[1]);
} 
endmodule
