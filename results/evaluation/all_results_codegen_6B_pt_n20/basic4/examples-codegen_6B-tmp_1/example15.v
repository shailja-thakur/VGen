// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk)
begin	
	out[EXTH] <= a[adext];
	out[EXTL] <= b[bext];
	if (sel) {
		out[EXTH2] <= a[2 + adext];
		out[EXTL2] <= b[2 + bext];
	}
end
)
endmodule
