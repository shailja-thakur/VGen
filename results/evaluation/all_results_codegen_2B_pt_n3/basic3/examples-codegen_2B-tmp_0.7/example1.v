// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (not in[0])
begin
  pos = pos | (in[1] & 3) << 1;
  pos = (pos & 0xFF) | (in[0] & 1);
  if (pos == 0xFF) pos = 0;
  out <= pos;
end;
endmodule
