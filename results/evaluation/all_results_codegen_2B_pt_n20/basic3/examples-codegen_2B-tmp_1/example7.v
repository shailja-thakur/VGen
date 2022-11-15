// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
{
    pos[0] = ~in[0]&in[2];
    pos[1] = ~in[0]&in[0];
    if (in[1] < in[0]<<3) {
    	pos[0] = in[1]&0b0011111111;out = pos[0]; 
    } else {
    	pos[1] = in[1]&0b0011111111;out = pos[1];
    }
}
)endmodule
