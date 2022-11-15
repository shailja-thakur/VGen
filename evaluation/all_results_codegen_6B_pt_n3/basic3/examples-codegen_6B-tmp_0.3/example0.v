// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel)
  begin
    pos <= (in[2]?1:0);
  end
end

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder2( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel)
  begin
    pos <= (in[2]?1:0);
  end
end

module priority_encoder3( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel)
  beginendmodule
