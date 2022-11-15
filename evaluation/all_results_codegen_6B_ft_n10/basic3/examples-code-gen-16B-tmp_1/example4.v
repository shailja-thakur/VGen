// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
wire [2:0] x = ~in;
assign pos = x ^ ({3{x[2]}} &gt;&gt; {x[1],x[0],1'b0});
endmodule
