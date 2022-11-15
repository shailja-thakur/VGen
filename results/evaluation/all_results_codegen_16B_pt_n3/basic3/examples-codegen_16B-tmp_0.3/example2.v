// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
always @( posedge a or posedge b )
begin
  if ( in[1] ) pos <= 1'b0;
  else if ( in[0] ) pos <= 1'b1;
  else pos <= 1'b0;
end
endmodule
