// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
wire [3:0] b, 
        bit;

always @(posedge in)
  if (pos[pos<0:2]) 
   pos[pos<0:2] = in[pos<0:2]|pos[pos<0:2];

always @(posedge in)
  if (not pos[pos<0:2])
   pos[pos<0:2] = pos[pos<0:2]|in[pos<0:2];

always @(posedge in)
  if (not pos[pos<0:2])
   pos[pos<0:2] = pos[pos<0:2]|in[pos<0:2];

always @(posedge in)
  if ((in[2] and in[3]) or (in[2] and in[3]) and (in[endmodule
