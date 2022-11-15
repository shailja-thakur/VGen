// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk)
sel <= a[0] ? out[0] <= a[1] : out[0] <= b[1] ? out[0] <= b[0] : out[0] <= 0;
endmodule