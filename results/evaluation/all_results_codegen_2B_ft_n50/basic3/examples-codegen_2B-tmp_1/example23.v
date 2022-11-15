// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// assign output to output(0 0 0 r ... if more than 4 bits active)
//for (i = 0; i < 4; i++) -> FF(in[0], in[1], in[2], out[i]);
reg [3:0] out;
always @(in) begin
if(in[0]) out <= 0;
else if (in[1]) out <= 1;
else if (in[2]) out <= 2;
else out <= 3;
end 
endmodule
