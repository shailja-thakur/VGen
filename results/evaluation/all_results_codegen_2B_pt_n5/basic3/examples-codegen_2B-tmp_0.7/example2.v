// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [3:0] b;
// When sel=0, assign b to out
reg [3:0] pos;

void main()
{   
    // When the two input bits are high, set pos to 0x1.
    if ( ( in[0] | in[1] ) == 0x3 ) {
        pos = 0b1;
    }
    // When the two input bits are low, set pos to 0x0.
    else {
        pos = 0b0;
    }
    // If the two input bits are high, assign b to 1.
    if ( ( in[0] | in[1] ) == 0x3 ) {
        b = 1;
    }
    // If the two input bits are low, assign b to 0.
    else {
        b = 0;
    }
    // Output theendmodule
