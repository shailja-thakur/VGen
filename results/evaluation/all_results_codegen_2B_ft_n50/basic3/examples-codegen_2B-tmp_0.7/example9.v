// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( in or pos )
begin
	case ( pos )
	3'b000 :
	begin
	if ( in[2] == 1'b1 )
	begin
	pos = 3'b001;
	end
	else if ( in[1] == 1'b1 )
	begin
	pos = 3'b010;
	end
	else begin
	pos = 3'b000;
	end
	end
	3'b001 :
	begin
	if ( in[1] == 1'b1 )
	begin
	pos = 3'b010;
	end
	else if ( in[0] == 1'b1 )
	begin
	pos = 3'b011;
	end
	else begin
	pos = 3'b001;
	end
	end
	3'b010 :
	end
endmodule
