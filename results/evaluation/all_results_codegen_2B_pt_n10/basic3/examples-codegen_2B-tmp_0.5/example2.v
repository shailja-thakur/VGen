// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin
    if (in[1] == 0)
        pos = 0;
    else if (in[1] == 1)
        pos = 1;
    else if (in[1] == 2)
        pos = 2;
    else if (in[1] == 3)
        pos = 3;
    else if (in[1] == 4)
        pos = 4;
    else if (in[1] == 5)
        pos = 5;
    else if (in[1] == 6)
        pos = 6;
    else if (in[1] == 7)
        pos = 7;
    else if (in[1] == 8)
        pos = 8;
    else if (in[1] == 9)
        pos = 9;
    else if (in[1] == 10)
        posend
endmodule
