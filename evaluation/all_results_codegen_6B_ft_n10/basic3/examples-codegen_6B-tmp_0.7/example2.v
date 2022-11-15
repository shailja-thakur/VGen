// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( in or pos )
begin: pri_enc
case( pos )
0: if( in[2] == 1'b1 )
	pos[1] = 1'b1;
	else pos[1] = 1'b0;
1: if( in[1] == 1'b1 )
	pos[1] = 1'b1;
	else pos[1] = 1'b0;
2: if( in[0] == 1'b1 )
	pos[1] = 1'b1;
	else pos[1] = 1'b0;
endcase
//assign a = in[0];
end
endmodule
