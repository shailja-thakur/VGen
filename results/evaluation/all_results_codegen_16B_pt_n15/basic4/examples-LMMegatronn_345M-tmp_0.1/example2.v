// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
reg [4:0] out;
always @ (a or b or sel)
begin
	case (sel)
		1'b0: out = a;
		1'b1: out = b;
	endcase
end
endmodule
