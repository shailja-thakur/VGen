// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
// When sel=0, assign a to out
always @(posedge clk) {
  if (sel == 1) {
    pos <= in;
  } else if (sel == 0) {
    pos <= in;
  } else {
    pos <= 0;
  }
}

always @(posedge clk) {
  out <= pos;
}

endmodule
