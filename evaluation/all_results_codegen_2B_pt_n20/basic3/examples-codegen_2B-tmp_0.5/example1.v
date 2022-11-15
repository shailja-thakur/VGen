// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign out = ( ( ( in[0] << 1 ) | ( in[1] << 0 ) ) >> 2 );
always @( posedge clk )
{
    pos = out;
}
);

// This is a 3-bit priority decoder. If none of the input bits are low, output is zero.
module priority_decoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign out = ( ( ( in[0] << 1 ) | ( in[1] << 0 ) ) >> 2 );
always @( posedge clk )
{
    pos = out;
}
);

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_2( 
endmodule
