// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
begin
case (pos)
0:	out <= 0;
1:	out <= in[1];
2:	out <= in[2];
default: out <= 0;
endcase
end
endmodule
