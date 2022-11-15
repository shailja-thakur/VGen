// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
sc_uint<P1-1> b; 
// when bitpos=P1, assign b_F=0; 
// when bitpos=P{P2,1}, assign b_F=1; 
follow p000 = in[0];
follow p001 = in[1]; 
output reg [1:0] out_P0; 
if (pos==0'b0)   out_P0=in_P1; 
else if (p001 && ~in_P2)   out_P0=p001[1];
else                out_P0=~p000;
always @(posedge o) 
if (pos==0'b0) out_P0[pos](bitpos=P2); 
else if (pos=>in_P1 && ~in_P2)   out_P0[pos](bitposendmodule
