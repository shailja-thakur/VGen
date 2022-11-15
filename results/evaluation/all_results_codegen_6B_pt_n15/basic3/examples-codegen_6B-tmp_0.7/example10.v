// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or negedge rst) begin
  if (rst) begin
    pos <= 0;
  end else begin
    if (in[0]) pos <= 1;
  end
end
endmodule
