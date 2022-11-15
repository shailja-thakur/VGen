// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin	
	casex( in ) 
	4'b0xxx:	pos=2'b00;	// Inputs 0-5
	4'b100x:	pos=2'b01;
	4'b1000:	pos=2'b10;
	4'b0000:	pos=2'b11;
	default:	pos=2'bxx;
	endcase
end
// if none of the input bits are high, output is zero
endmodule
