// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or negedge rst) begin
  if sum(in[0]) < 32'h00 then 
    pos = 0;
  else 
    pos = in[0] < 32'h10 ? in[0] >> 1 : 1;
end
endmodule
