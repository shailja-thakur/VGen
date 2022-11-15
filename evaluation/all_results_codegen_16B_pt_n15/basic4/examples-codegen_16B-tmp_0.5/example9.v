// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a * 2 to out. 
// When sel=3, assign b * 2 to out. 
always @(posedge clk) begin
	case(sel)
		out <= a;
		out <= b;
		out <= a * 2;
		out <= b * 2;
	endcase
end

// Example where a and b are integers.
// This is equivalent to the above mux.
module mux2( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a * 2 to out. 
// When sel=3, assign b * 2 to out. 
always @endmodule
