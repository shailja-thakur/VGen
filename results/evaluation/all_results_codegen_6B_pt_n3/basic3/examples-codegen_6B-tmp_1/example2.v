// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign l to out
reg [1:0] pos_reg, sel_reg;
always @(posedge clk)
  sel_reg <= (in[1] && in[2] && !in[3] ? 0 : 1);
reg [123] in_reg;
always selectde if (in_reg)
{
  in_reg [1] <= in[0];
  in_reg [2] <= in[1];
  in_reg [3] <= in[2];
}
assign out = (clk & sel && hspec) ? in_reg : 0;

endmodule
