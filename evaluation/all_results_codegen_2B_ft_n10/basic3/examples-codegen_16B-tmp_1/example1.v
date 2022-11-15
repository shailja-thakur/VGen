// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@(*)
begin
	case(in)
	2'b00 : pos = 2'bzz ; // if inputs are all low, assign output to 2'bzz.
	2'b00 | 2'b011: pos = 2'b00 ; // if even one input is high, output is 0. 
	2'b00 | 2'b111: pos = 2'b01 ; // if all inputs are high, output is 1. 
	2'b01 | 2'b101: pos = 2'b10 ; // if 2 or more inputs are high, output is 2 to 11.
	default : pos = 2'bxx ; // default assigns output to x.
	endcase
end 
endmodule
