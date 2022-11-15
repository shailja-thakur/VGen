// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign ~b to out
always @(posedge clk) begin
  case(in)
    0 : pos <= 0;
    1 : pos <= 1;
    2 : pos <= 2;
    3 : pos <= 3;
    4 : pos <= 0;
    5 : pos <= 1;
    6 : pos <= 2;
    7 : pos <= 3;
    8 : pos <= 0;
    9 : pos <= 1;
    10 : pos <= 2;
    11 : pos <= 3;
    12 : pos <= 0;
    13 : pos <= 1;
    14 : pos <= 2;
    15 : pos <= 3;
    16 : pos <= 0;
    17 : pos <= 1;
    18 : pos <= 2;
    19 : pos <= 3;
    20 : pos <= 0;
    21 :end
endmodule
