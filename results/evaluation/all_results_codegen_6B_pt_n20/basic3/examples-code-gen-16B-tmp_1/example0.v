// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, output z
// Input 0 will go to x3, x2, x1, 0
always @( in or sel ) begin
// 0 - 3
	if( sel == 1 'b1 ) begin
// 1 - 3
	case( in )
// 4 bits to select output
// 0000, 0001, 0010, 0011, 0100, 0101, 0110, 0111
/*
0, 1, 1, 1, 0, 0, 1, 1,
0, 0, 0, 0, 1, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0,
0, 0, 0, 0, 0, 0, 0, 0
*/
// 0000 - 0100
0: pos <= 2 'b00;
// 0001 - 0111
1: pos <= 2 'b11;end
end
endmodule
