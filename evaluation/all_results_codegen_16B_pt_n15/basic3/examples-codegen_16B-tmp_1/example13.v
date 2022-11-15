// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or negedge rst)
  if (rst) 
    pos <= {sel{1'b0}};
    else if (in[3])
      pos <= {sel{1'b0},plain{b}};
  else if (in[2])
    pos <= {sel{1'b1}};
  else if (in[1])
    pos <= {sel{1'b0},inh{b}};
  else if (sel)
    pos <= {sel{sel},plain{b}}; 
endmodule
