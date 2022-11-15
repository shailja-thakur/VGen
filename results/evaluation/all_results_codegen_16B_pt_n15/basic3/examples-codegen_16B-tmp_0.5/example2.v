// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [1:0] sel;
always @( posedge in ) begin
  if( in[0] | in[1] )
    sel <= 1;
  else
    sel <= 0;
  if( sel == 1 )
    pos <= in[1];
  else
    pos <= 0;
end
endmodule
