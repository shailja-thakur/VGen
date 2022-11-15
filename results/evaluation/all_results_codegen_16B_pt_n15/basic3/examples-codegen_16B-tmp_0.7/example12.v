// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
always @(posedge clk) begin
  if (sel==0) pos <= in;
  else if (sel==1) pos <= in + 1;
end
end
// 1-bit priority encoder (w/ 3-bit priority)
module priority_encoder_with_3_bits( 
input [2:0] in,
output reg [1:0] pos,
input [3:0] sel ); 
// When sel=0, assign a to out
// When sel=1, assign b to out
// When sel=2, assign c to out
always @(posedge clk) begin
  if (sel==0) pos <= in;
  else if (sel==1) pos <= in + 1;
  else if (sel==2) pos <= in + 2;endmodule
