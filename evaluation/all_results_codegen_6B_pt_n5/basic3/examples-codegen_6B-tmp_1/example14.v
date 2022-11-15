// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk) 
if(sel)
	pos <<= in;
else
	pos = 0; 
end

#(2) a latch block. 
module latched_pos( input wire pos, output reg data, boolean latch );
wire l_in;
always @(posedge clk) 
if (latch)
	data = pos; 
end

#(3) the decoder module combining the two 
module logic_decoder( input wire pos, output reg [2:0] q );
wire [2:0] dec;
always @ (posedge clk) 
	dec <= pos & state;
end
`
endmodule
