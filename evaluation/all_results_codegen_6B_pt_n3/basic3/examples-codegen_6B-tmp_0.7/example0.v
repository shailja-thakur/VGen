// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  if(sel)
  {
    priority_encoder_sel
        #((3&1)|(2&2)|(1&1)|(0&0))  // Select input bit order and edge detection
        = in[0] & in[1] & in[2] & in[3];
    priority_encoder_data
        #((3&1)|(2&2)|(1&1)|(0&0))  // Select input bit order and edge detection
        = in[0] & in[1] & in[2] & in[3];
  }
endmodule
