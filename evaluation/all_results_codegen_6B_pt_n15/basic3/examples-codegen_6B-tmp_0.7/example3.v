// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or negedge rst) // or posedge clk 
  if (rst) pos <= 0;   // when reset, high-to-low
  else if (sel && !(in[0] && in[1])) // when in reset, low-to-high
    pos <= 1;
else if (sel && in[0]) // when in reset, low-to-high
  pos <= 4;

// output the bits
reg [1:0] a;
always @(posedge clk or negedge rst) // or posedge clk 
  if (rst) a <= 0;   // when reset, high-to-low
  else if (sel && !(in[1])) // when in reset, low-to-high
    a <= 1;
else if (sel && in[1endmodule
