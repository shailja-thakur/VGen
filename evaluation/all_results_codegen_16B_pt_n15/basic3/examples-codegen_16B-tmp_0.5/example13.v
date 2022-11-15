// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
always @(posedge clk) begin
  if (in[2]) pos <= 1'd1;
  else if (in[1]) pos <= 1'd0;
  else if (in[0]) pos <= 1'd0;
  else pos <= 1'd0;
end
endmodule
