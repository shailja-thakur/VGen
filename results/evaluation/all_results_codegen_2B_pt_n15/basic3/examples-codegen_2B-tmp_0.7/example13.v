// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[2];

reg [2:0] phi;
reg [3:0] cnt;

always @(posedge clk)
begin
    if ( in_low )
    {
        cnt = (cnt + 1) & 3;

        if ( cnt == 0 )
            phi = cnt;
    }
else
    cnt = 0;

always @(posedge clk)
begin
    if ( in_low )
    {
        pos = phi;
        phi = (phi + cnt) & 3;
    }
end
end
);
*/

/*
// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
// This is a 3-bit priority encoder. If none of the input bits are high, output is zeroendmodule
