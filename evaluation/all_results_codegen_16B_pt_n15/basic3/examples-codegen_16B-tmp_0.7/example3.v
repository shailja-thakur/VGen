// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
  always @ (posedge in)
  begin 
    case(in)
      0: pos <= 0;
      1: pos <= 1;
      2: pos <= 2;
      3: pos <= 3;
      4: pos <= 4;
      5: pos <= 5;
      6: pos <= 6;
      7: pos <= 7;
    endcase
  end
endmodule
