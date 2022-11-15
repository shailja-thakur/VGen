// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
before( reg [2:0] b, sel=1/1 ) { assign reg [b] pos; }

#------------------------------------------------------------------------------
# Hex InCoder.  Encrypts binary signal Fb using 08/04/08 Hi and Lo registers.
#------------------------------------------------------------------------------
module in_coder( in [7:0] p, out [2:0] b, inout reg [3:0] hl );

before( reg [2:0] b )
{
# For the CBMC47 maps, flip some bits to have some reflectance.
# NB: bitstream should be AND-ed with inputs.
#   Do not AND with Clock Out tag.
assign hl = flip_bits( p, {32,48,56,64,72,80,88,96,103,111,119,126,134,
   142,150,158,166endmodule
