// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
  if (in[0] == 1)
    pos[1] = 1;
  else
    pos[1] = 0;
  if (in[1] == 1)
    pos[0] = 1;
  else
    pos[0] = 0;
end
);

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_2( 
input [2:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
  if (in[0] == 1)
    pos[2] = 1;
  else
    pos[2] = 0;
  if (in[1] == 1)
    end
endmodule
