// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
    if (in[0] == 1)
        pos = pos + 1;
    else if (in[1] == 1)
        pos = pos + 2;
    else if (in[2] == 1)
        pos = pos + 4;
    else if (in[3] == 1)
        pos = pos + 8;
    else if (in[4] == 1)
        pos = pos + 16;
    else if (in[5] == 1)
        pos = pos + 32;
    else if (in[6] == 1)
        pos = pos + 64;
    else if (in[7] == 1)
        pos = pos + 128;
    else
        pos = 0;
end
);

// This is a 4-bit priority encoder. If none of the input bitsendmodule
