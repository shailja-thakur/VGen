// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( this xor sel out)
case(sel)
0 : b[0] <= in[0];
1 : b[1] <= in[1];
2 : b[2] <= in[2];

endcase

always @* 
case(this)
0 : pos = no;
1 : pos = 1;
2 : pos = 2;

endcase

endmodule
