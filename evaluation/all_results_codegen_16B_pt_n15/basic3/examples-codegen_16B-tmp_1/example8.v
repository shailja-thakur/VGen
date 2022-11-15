// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
assign out = (sel & in) | (~sel & ~in);

// The three inputs are labeled differently though
11
10
00

1 1 3 <= 3 2 1 = 2

'''
endmodule
