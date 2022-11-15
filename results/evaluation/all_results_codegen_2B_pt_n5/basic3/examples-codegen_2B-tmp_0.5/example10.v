// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = (in[1] & 0x01) << 1 | 
            (in[0] & 0x01) << 0; 
// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
assign pos = (in[2] & 0x01) << 2 | 
            (in[1] & 0x01) << 1 | 
            (in[0] & 0x01) << 0; 
// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [7:0]endmodule
