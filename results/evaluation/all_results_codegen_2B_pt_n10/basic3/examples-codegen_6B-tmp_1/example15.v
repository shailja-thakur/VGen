// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
begin
  if (pos==0) begin
    val_b <= in; // case (0,0); X, Y equal to input
  end else begin
    if (sel) val_b <= in & (1 << pos);
  end
end
endmodule
