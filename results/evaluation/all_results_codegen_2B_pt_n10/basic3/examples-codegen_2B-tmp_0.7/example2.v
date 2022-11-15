// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg [1:0] b;

always @(posedge clk) 
begin
  if (in == 1) {
    if (pos == 0) {
      b = 2;
    } else if (pos == 1) {
      b = 3;
    } else {
      b = 0;
    }
  }
end

always @(posedge clk) 
begin
  pos = pos + 1;
  if (pos == 0) {
    pos = 1;
  }
end
end

endmodule
