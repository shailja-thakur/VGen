// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
wrising_up_n   [in, 6:0] r = sel ? b[1] : 0b111
wrising_up_n   [in, 0:6] w = sel ? b[0] : 0b10111

wbpri_low       [pos, 6:1]  = w[12:12]
wbpri_low       [pos, 1:0]  = w[10:9]
wbpri_high      [pos, 6:1]  = p[19:15]
wbpri_high      [pos, 0:0]  = p[11:8]
wbstate_low     [pos, 9:5]  = w[0:0]
wbstate_low     [pos, 4:3]  = w[5:4]
wbstate_high    [pos, 9:5]  = p[endmodule
