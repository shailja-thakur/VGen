// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
//assign pos = in[0] & in[1] & in[2] & in[3] & in[4] & in[5] & in[6] & in[7] & in[9] & in[10] & in[11] & in[12] & in[13] & in[14] & in[15] & in[16] & in[17] & in[18] & in[19] & in[20] & in[21] & in[22] & in[23] & in[24] & in[25] & in[26] & in[27] & in[28] & in[29] & in[30] & in[31] & in[32] & in[33] & in[34] & in[35] & in[36] & in[37] & in[38] & in[39] &endmodule
