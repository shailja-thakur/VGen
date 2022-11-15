// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
priority_encoder dip_sel = 0b00;
// The only 1-bit worth of output--important!
pos <= 0 ? 
out[0] <= 0 ? 0x00 : out[0]
: dip_sel != 0b00 || dip_sel != 0b10 ? out[0]
: out[0] <= 0 ? out[0]
: 
>= 0 ? 
(out[1] <= 0 ? 0x08 : out[1]
<< 2 )
+ ((out[0] & 0b11) | (out[1] & 0b11) << 1)
: out[0];

endmodule
