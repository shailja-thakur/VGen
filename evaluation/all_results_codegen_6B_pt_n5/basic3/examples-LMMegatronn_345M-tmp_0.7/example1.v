// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in)
begin
	case (in)
		0: pos <= 3'b010;
		1: pos <= 3'b100;
		2: pos <= 3'b000;
		3: pos <= 3'b001;
		default: pos <= 3'b111;
	endcase
end

endmodule
