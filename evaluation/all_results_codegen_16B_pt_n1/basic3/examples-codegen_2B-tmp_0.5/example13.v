// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos[1:0] = in[1:0] ? b'1' : b'0';
// When sel=0, assign b to out
assign pos[1:0] = b'0';
);

// This is a 8-bit priority encoder.
module priority_encoder( 
input [8:0] in,
output reg [8:0] pos ); 
// When sel=1, assign b to out
assign pos[8:0] = in[8:0] ? b'1' : b'0';
// When sel=0, assign b to out
assign pos[8:0] = b'0';
);

// This is a 16-bit priority encoder.
module priority_encoder( 
input [16:0] in,
output reg [16:0] pos );endmodule
