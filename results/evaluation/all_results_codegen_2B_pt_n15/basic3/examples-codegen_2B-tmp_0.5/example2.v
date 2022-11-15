// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
  if ( (in[0] ^ in[1]) & pos[0] )
  {
    out = b;
  }
  else
  {
    out = ~b;
  }
end
);

// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [4:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
  if ( (in[0] ^ in[1]) & pos[0] )
  {
    out = b;
  }
  else
  {
    out = ~b;
  }
end
);

// This is a 7-bit priority encendmodule
