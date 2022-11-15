// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
    pos = pos + 1;
    if (in[1] == 1 && in[0] == 1)
        pos = pos + 1;
    if (in[1] == 1 && in[0] == 0)
        pos = pos + 2;
    if (in[1] == 0 && in[0] == 1)
        pos = pos + 3;
    if (in[1] == 0 && in[0] == 0)
        pos = pos + 4;
end
);

// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [3:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
endmodule
