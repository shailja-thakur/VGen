// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, rotate (through two additional step of left shift) eight times
// which gives - A, B, C, A, B, C, A, B
// At the fourth time local parameter width is - qualified
always @(*
	casex ( in )
	0 : pos = 2'b00;
	1 : pos = 2'b01;
	2 : pos = 2'b10;
	4 : pos = 2'b11;
	endcase)
// rotation by 8 is achieved through 
// left shift then right shift. However, for 2 numerical digits (i.e. 8 and 16 bit numbers),
// shifting left by 2 (or shifting right by 2) repeats their individual MSB-LSB sequences.
// To achieve a rotation by 8, it also requires shifting left by 4 (or shifting right by 4).
// It is easily programmed usingendmodule
