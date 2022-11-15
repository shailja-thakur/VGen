// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel)
  begin
    pos <= in[2];
  end
end

module priority_encoder_2( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel)
  begin
    pos <= in[2];
  end
end

module priority_encoder_3( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel)
  begin
    pos <= in[2];
  end
end

module priority_encoder_4( 
input [2:0] in,
outputendmodule
