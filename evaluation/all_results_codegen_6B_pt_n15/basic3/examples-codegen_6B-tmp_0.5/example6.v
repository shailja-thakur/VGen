// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
  if (sel)
  begin
    if (in[1] == 1)
      pos = 1;
    else if (in[0] == 1)
      pos = 2;
    else
      pos = 0;
    sel = 0;
  end
end

module priority_encoder_top(
input [2:0] in,
output reg [1:0] pos );
  priority_encoder(in, pos);
end

module priority_encoder_middle(
input [2:0] in,
output reg [1:0] pos );
  priority_encoder_top(in, pos);
end

module priority_encoder_bottom(
input [2:0] in,
output reg [1:0] pos );
  priority_encoder_middleendmodule
