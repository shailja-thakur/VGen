// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @*
case ( in )
3'd01: pos = 2'd2;
3'd10: pos = 2'd1;
3'd11: pos = 2'd0;
default: pos = 2'd0;
endcase
endmodule
