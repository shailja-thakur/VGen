// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel)
    pos <= in[2];
end

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_sel( 
input [2:0] in,
output reg [1:0] pos,
input reg sel ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel)
    pos <= in[2];
end

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_sel_2( 
input [2:0] in,
output reg [1:0] pos,
input reg sel ); 
// When sel=1, assign b to out
endmodule
