// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always_comb
  case (in[0])
    0: pos=0;
    1: pos=1;
    2: pos=2;
    3: pos=3;
  endcase
endmodule
