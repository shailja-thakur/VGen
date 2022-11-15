// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin
if(in[2]==1) begin
pos[1] = in[2];
pos[0] = 0;
end
else if(in[1]==1) begin
pos[1] = in[1];
pos[0] = 1;
end
else if(in[0]==1) begin
pos[1] = 1;
pos[0] = 0;
end
else pos = 2'bzzz;
end
endmodule
