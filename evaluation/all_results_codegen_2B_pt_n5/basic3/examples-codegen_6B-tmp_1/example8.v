// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos)
begin
	case( pos ) // defines pos as the output if sel is 1
	2'b11 :
	begin
	if(in[2] >= 0)
	pos = 2'b00;
	else
	pos = 2'b11;
	end
	2'b10: // defines pos is =========
	begin
	if(in[1] >= 0)
	pos = 2'b01;
	else
	pos = 2'b10;
	end
	2'b01 : 
	begin
	if(in[0] >= 0)
	pos = 2'b10;
	else
	pos = 2'b01;
	end
	default pos = 2'bxx; // should never happen
	endcase
	end
endmodule
