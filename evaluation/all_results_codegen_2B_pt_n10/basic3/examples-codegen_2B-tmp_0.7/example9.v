// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign b to in

wire sel;

reg [7:0] xor_key;
reg [7:0] padxor;

always @(posedge in)
  if ( xor_key[7:0] == 0x00 )
    pos = pos + 1;
  else
    pos = pos - 1;

always @(posedge in)
  if ( sel[7:0] == 1 )
    xor_key[7:0] = xor_key[7:0] << 2 | pos;
  else
    xor_key[7:0] = xor_key[7:0] >> 2 | pos;

always @(negedge in)
  pos = pos + ( in ?  xor_key[7:0] & 0x01 : 0endmodule
