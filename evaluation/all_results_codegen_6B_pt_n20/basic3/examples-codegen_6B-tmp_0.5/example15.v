// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  priority_encoder_sel <= (in[0] or in[1] or in[2] or in[3] or in[4] or in[5] or in[6] or in[7] or in[8] or in[9] or in[10] or in[11] or in[12] or in[13] or in[14] or in[15] or in[16] or in[17] or in[18] or in[19] or in[20] or in[21] or in[22] or in[23] or in[24] or in[25] or in[26] or in[27] or in[28] or in[29] or in[30] or in[31]);
endmodule
