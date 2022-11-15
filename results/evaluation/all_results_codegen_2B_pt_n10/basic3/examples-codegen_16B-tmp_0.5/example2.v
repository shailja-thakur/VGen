// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or sel)
begin
	case(sel)
	1'b0:
	begin
	pos=2'd0;
	end
	1'b1:
	begin
	pos=2'd1;
	end
	endcase
end
endmodule
