// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = ((in[2] || in[1]) && !in[0]) ? pos = 1 : pos = 0; 
// Constraint for in[2]=1, in[1]=1, in[0]=0
always @(posedge clk) 
begin 
  if( (in[2] && in[1] && !in[0]) || 
      (pos && !in[2] && !in[1] && !in[0]))
    pos = 0; 
  else if (!pos && !in[2] && !in[1] && !in[0])
    pos = 1; 
  output reg [1:0] pos_out; 
  pos_out <= pos; 
end
);
endmodule
