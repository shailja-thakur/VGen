// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or ~sel)
  if (sel) 
  begin
    pos <= 1'b0;
  end
  else
    pos <= in;
end

// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [2:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or ~sel)
  if (sel) 
  begin
    pos <= 2'b0;
  end
  else
    pos <= in;
end

module priority_encoder( 
input [2:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
always @(endmodule
