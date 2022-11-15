// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign b = (in & reset) ? input[0] : (in & 2) ? input[1] : 1; 
// When sel=0, assign bits from lo to hi so that b = input[lo:hi]
assign b[2:1] = in & 1;
assign b[0] = (b[0] | b[1]);
                  R_pos = b[0]; 
                  R_hi = in[1]; 
                  R_lo = input[2]; 
); 
wire [5:0] wino; 
assign w = wyo; 
assign wtmp = wino; 
always @(*) AND ~ awin; 
assign awin = ~(~w || ~wtmp); 
assign awin_wtmu = a[n:k]; 
assign awinendmodule
