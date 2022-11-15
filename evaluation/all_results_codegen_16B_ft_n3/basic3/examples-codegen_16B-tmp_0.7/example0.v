// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos)
begin
	case(pos)
	2'd0: pos = in;
	2'd1: pos = {1'd0,in[2]};
	2'd2: pos = {1'd0,in[2],in[1]};
	2'd3: pos = {1'd0,in[2],in[1],in[0]};
	endcase
end
endmodule
