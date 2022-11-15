// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( in or sel )
begin
	case ( sel )
	1'b1: pos=2'b11;
	1'b0: 
	begin 
	if(in[0]==0 & in[1]==0 & in[2]==0) pos=2'b00;	// When all 3 input are 0, pos must be 0
	else if(in[0]==0 & in[1]==0 & in[2]==1) pos=2'b10;	// When in[2] is 1, pos must be 2
	else if(in[0]==0 & in[1]==1 & in[2]==0) pos=2'b01; // When in[1] is 1 & in[2] is 0, pos must be 1
	else if(in[0]==0 &end
end
endmodule
