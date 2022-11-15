// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = (in[1]?1:0) | (in[0]?2:0);

wire [7:0] b;
assign b = pos;

always @(posedge clk) begin
  if (pos == 0) b = 0;
end

endmodule
