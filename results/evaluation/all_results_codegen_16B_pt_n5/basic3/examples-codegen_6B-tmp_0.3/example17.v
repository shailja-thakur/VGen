// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel)
    pos <= in[1];
end

// This is a 3-bit priority decoder. If none of the input bits are low, output is zero.
module priority_decoder( 
input [1:0] in,
output reg [2:0] out ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel)
    out <= in[1];
end

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_2( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  if (sel)
    endmodule
