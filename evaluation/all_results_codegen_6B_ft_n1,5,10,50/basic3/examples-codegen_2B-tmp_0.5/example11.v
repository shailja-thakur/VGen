// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos[1] = ( (in[1] >> 7) & 1 ) | 
                ( (in[0] >> 7) & 2 );
// When sel=0, assign b to out
assign pos[0] = ( (in[1] >> 6) & 1 ) | 
                ( (in[0] >> 6) & 2 );
);

always @(posedge clk)
    if (pos[1] == 1) out = 0;
    else if (pos[0] == 1) out = 1;
    else out = 0;

endmodule
