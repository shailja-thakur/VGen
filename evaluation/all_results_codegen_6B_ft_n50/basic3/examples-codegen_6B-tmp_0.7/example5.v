// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos)
case (pos) 
0: if (in) pos=2;
1: if (in) pos=1;
2: if (in) pos=0;
endcase
endmodule
