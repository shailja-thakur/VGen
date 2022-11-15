// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( posedge in, posedge pos )
begin
  if( pos[1] == 1 ) b[0] = in[0];
  else
  {
    if( pos[0] == 1 ) b[1] = in[1];
  }
end
endmodule
