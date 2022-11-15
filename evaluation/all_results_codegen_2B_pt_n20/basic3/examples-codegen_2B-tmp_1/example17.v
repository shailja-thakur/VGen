// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
only dup2_sel.b <= ((1 << 8) | 0x0);

assign out = d.o;

always @(o)
        priority_encoder(pos=1011,in=1001);
endmodule
