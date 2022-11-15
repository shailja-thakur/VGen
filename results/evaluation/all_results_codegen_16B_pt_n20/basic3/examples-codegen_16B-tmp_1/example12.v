// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign out = reg[0];
// When sel=1, assign a to pos
assign pos = bool(reg[1] | reg[2]);

//Truth table for input A
// T:input A
//  F  a=Y
//  F  a=X
//  T  a=X
//  T  a=0

// F : reg[1]=1
// F : reg[2]=1
// F : reg[0]=1

// T : reg[1]=1
// T : reg[2]=0
// T : reg[0]=0

priority_encoder: process( A, B ) {
	A = A || B;
	if (A == 1 && (B == 1 || B == 0)) pos = 1;
	else if (A == 0 && (B == 0endmodule
