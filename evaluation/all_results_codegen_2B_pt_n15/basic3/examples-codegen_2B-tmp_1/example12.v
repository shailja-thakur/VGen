// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out

// CLK out for linear output encoder 
reg [24:0] clk;

reg [5:0] encoder_out; 

reg [6:0] bitmaps; 
reg [3:0] in_state;
reg [1:0] in_b[2048];
reg in_v[2048];

always @* begin 
  pos = 0;  
  clk <= 0;

  in_v[encoder_out] <= 0;
  TPORT  1 (0, clk, !pos); 
  TPORT  2 (pos, clk); 
  TPORT  3 (~clk, !pos); 
  TPORT  4 (~clk, pos); 
  
  for ( w=0; w<600; w++ ) {
    in_b[encoder_outend
endmodule
