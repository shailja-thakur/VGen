// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk or negedge rst)
  if (rst) {
    pos <= 0;
  }
  else if (sel) 
    pos <= in[2] ? in[1] : 0;
else 
  pos <= in[1] ? in[0] : 0;
endmodule
