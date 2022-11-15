// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk) 
  begin
    out <= (
      (in[0] == 0) ? 0b0000 :
      (in[0] == 1) ? 0b0001 :
      (in[0] == 2) ? 0b0010 :
      (in[0] == 3) ? 0b0011 :
      (in[0] == 4) ? 0b0100 :
      (in[0] == 5) ? 0b0101 :
      (in[0] == 6) ? 0b0110 :
      (in[0] == 7) ? 0b0111 :
      (in[0] == 8) ? 0b1000 :
      (in[0] == 9) ? 0b1001 :
      (in[0] == 10) ? 0b1010 :
      (in[0] == 11) ? 0bend
endmodule
