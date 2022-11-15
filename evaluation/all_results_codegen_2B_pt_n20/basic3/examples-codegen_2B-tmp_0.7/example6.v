// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( b && ( in | pos ) )
begin
  pos = pos ? pos : 0;
end
);

// This is a 2-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_2( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( b && ( in | pos ) )
begin
  pos = pos ? pos : 0;
end
);

// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_4( 
input [4:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
always @ ( b && ( in |endmodule
