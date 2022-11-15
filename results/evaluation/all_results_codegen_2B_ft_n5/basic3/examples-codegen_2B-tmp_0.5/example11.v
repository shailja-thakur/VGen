// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
    pos[0] = (in[1]&1) << 1 | (in[0]&1);
end
);
//
// This is a 2-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_2( 
input [3:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
    pos[2] = (in[2]&1) << 2 | (in[1]&1) << 1 | (in[0]&1);
end
);
//
// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_3( 
input [4endmodule
