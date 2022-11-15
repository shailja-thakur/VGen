// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=2, assign a to out
// When sel=3, assign a and b to out
always @(posedge clk) begin
  if (sel == 3) {
    pos <= a + b;
  } else if (sel == 2) {
    pos <= a;
  } else if (sel == 1) {
    pos <= b;
  }
end
endmodule
