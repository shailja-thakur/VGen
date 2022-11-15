// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (pos, or_eq(pos, ~inz)) 
{
	let b = inz & SE;
	output out;
	const reg b1 = ~(b & M4);
	const reg b2 = (b & M5) & pos5;
	out = bz32(b1 & b2);
}
priority_encoder

reg 
top , re ,fe ,ee, fsC ;
reg fib, map_state, tmp1  , tmp2; 
readonly reg [~IF_s_CS + 1:0] pos;
assign tmp2 = t;
assign tmp1 = m;
//Connect the inputs
if_sel
{
assign top |= sub_t[top's tuple##1&FS_REG_LEN];
assign re   |= sub_t[re's tuple##endmodule
