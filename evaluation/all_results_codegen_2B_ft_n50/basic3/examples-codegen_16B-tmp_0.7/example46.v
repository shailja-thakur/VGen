// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos) 
	case (in)
//When sel=0, priority encoder output is 0
0: pos = 2'b00;
//When sel=1, priority encoder output is 1
1: pos = 2'b11;
//When sel=1, priority encoder output is 2
2: pos = 2'b10;
//When sel=1, priority encoder output is 3
3: pos = 2'b01;
//default case
default: pos=2'b00;
endcase
endmodule
