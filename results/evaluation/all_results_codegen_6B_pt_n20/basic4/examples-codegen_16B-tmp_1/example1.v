// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 


// Design a 2-to-1 multiplexer.
module mux(
output out,
input [9:0] a, b );
// When b is >=16, select high-z or X
// When b is <16, select b as the output. 


// Design a 2-to-1 multiplexer.
module mux( 
	output reg [4:0] out,
	input wire [4:0] a,
	input wire [4:0] b,
	input wire c
);

	always @ ( a, b, c )

	case ( {c} )

	1'b0:
	out = a;

	1'b1:
	out = b;

	submodule ( (), () )(a, b);	

	endcase

endmodule
