// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = (in[0]||in[1])? in[0] : in[1]; 
always @(posedge clk) begin
  if (pos == 1) pos = 0;
  if (pos == 2) pos = 1;
  if (pos == 3) pos = 2;
  if (pos == 4) pos = 3;
  if (pos == 5) pos = 4;
  if (pos == 6) pos = 5;
  if (pos == 7) pos = 6;
  if (pos == 8) pos = 7;
  if (pos == 9) pos = 8;
  if (pos == 10) pos = 9;
  if (pos == 11) pos = 10;
  if (pos == 12) pos = 11;
  if (pos == 13) pos = 12;
  if (pos == 14) posend
endmodule
