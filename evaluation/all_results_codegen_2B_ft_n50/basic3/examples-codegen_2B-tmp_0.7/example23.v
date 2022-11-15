// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos)
begin
	case (pos)
	1'b00:	assign b = in;
	1'b01:	assign b = in;
	1'b10:	assign b = 1;
	1'b11:	assign b = 0;
	endcase
end
endmodule
