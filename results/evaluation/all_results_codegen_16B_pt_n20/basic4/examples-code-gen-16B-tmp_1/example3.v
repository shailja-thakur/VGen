// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always_comb
begin: out_select
	case(sel)
		0: begin out = a; end
		1: begin out = b; end
	endcase
end
endmodule
