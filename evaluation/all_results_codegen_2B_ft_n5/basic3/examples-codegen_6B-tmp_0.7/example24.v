// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
begin
	case( pos )
	0: if(in[2]==1'b1)
	pos = 2'b01;
	1: if(in[1]==1'b1)
	pos = 2'b10;
	2: if(in[0]==1'b1)
	pos = 2'b11;
	// default pos is 2'bxx;
	endcase
end
endmodule
