// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = 2'b000;

always @(*) begin

for(i=0; i<=2; i= i + 1) begin

if( in[i]==1)
pos = i;
end
end
endmodule
