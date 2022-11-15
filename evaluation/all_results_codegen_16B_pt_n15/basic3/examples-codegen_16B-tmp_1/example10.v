// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// when sel=0, assign r to out (yields one of r, g, b)
// when sel=2, assign r to out (yields three r)
always @(posedge clk) 
begin  // when the clock finishes, pos is assigned
  if (in) pos <= pos + 1;
end  
endmodule
