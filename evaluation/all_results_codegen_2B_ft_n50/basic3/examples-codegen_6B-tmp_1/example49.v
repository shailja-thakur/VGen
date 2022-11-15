// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// POSITIONING MODELLING
// 0th bit
assign a = ~(in[0]	& in[1]);
// 1st bit
assign b = ~(a & in[2]);
// 2nd bit
assign c = ~(in[0] & in[1] & ~in[2]);
// 3rd bit
assign d = ~(~in[0] & ~in[1] & in[2]);
// 4th bit
assign e = ~(in[0] & ~in[1] & ~in[2]);
// 5th bit
assign f = ~(~in[0] & in[1] & ~in[2]); // 6th bit
always @(pos)
begin 
case(pos) 
2'b00:
out = {a,b,c,d,e,f};end
endmodule
