// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// Othewise return pos=0
assign out = (sel) ? b : pos;
 
always @(*) 
c1: pos[0] = (~in[2]) | (~in[1]); 
c2: pos[0] = (~in[1]) | in[2]; 
c3: pos[0] = in[1];
 
c4: pos[0] = in[2]; 
 
endmodule
