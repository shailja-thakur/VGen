// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk) begin
  if(in[0] || in[1]) pos <= 1; 
  else if(in[2] || in[3]) pos <= 2; 
  else if(in[4] || in[5]) pos <= 3; 
  else pos <= 0; 
end
endmodule
