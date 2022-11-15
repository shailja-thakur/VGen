// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge reset)
  b <= in[sel];

always @(posedge clk or posedge reset)
  reg[pos] <= 1'b0; //! default value if input not high

always @(posedge clk or posedge reset)
  if(sel) // send new bit
  {
	reg[pos] <= 1'b1;
	pos <= reg[pos] ^ in[sel]; // let new value propagate through
  }
endmodule
