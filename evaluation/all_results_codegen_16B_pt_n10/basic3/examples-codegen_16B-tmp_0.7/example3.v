// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or negedge reset)
  if (sel)
    pos <= in;
else
    pos <= 0;
end

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [0:3] in,
output reg [0:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or negedge reset)
  if (sel)
    pos <= in;
else
    pos <= 0;
end
endmodule
