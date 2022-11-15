// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
begin
case (in)
2'b01 :
	case(pos)
	0 : pos = 2'b10;
	1 : pos = 2'b01;
	default : pos = 2'b00;
	endcase	
2'b10 :
	case(pos)
	0 : pos = 2'b11;
	1 : pos = 2'b10;
	default : pos = 2'b00;
	endcase	
default : pos = 2'b00;
endcase 
end
endmodule
