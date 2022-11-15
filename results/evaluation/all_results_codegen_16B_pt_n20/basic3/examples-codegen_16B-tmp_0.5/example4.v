// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
always @(posedge clk) begin
  case(in)
    0: pos <= 0;
    1: pos <= 1;
    2: pos <= 2;
    3: pos <= 3;
    4: pos <= 4;
    5: pos <= 5;
    6: pos <= 6;
    7: pos <= 7;
    8: pos <= 8;
    9: pos <= 9;
    10: pos <= 10;
    11: pos <= 11;
    12: pos <= 12;
    13: pos <= 13;
    14: pos <= 14;
    15: pos <= 15;
    16: pos <= 16;
    17: pos <= 17;
    18: pos <= 18;
    19: pos <= 19;
    20: pos <= 20;
    21: posend
endmodule
