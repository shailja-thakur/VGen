// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos[1:0] = in[1:0] ? b[1:0] : b[0:1]; 
always @ (posedge clk) begin
  if (in[0] == 1)
    pos[1] = 1;
  else if (in[1] == 1)
    pos[0] = 1;
  else
    pos[1] = 0;
end
);

// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [3:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
assign pos[3:0] = in[3:0] ? b[3:0] : b[2:4]; 
always @ (posedgeendmodule
