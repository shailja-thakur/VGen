// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// FIXME: The following are active at the end
// of sel? 
*/

reg [4:0] out;

// If a, b, select input. 
// are 0, select input.
always @ (a or b or sel)
	begin
		case (sel)
			0: out = a;
			1: out = b;
		endcase
	end

endmodule
