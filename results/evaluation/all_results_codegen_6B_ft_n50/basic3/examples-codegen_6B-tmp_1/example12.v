// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out

always @(*) 
	case (in) 
	3'b000 : pos = 2'b00; 
	3'b001 : pos = 2'b01; 
	3'b010 : pos = 2'b10; 
	3'b011 : pos = 2'b11; 
endcase 	
///////////////////////////////////////////////////////////////////////////////
//
// 6.111 lab 03, VLSI Lab
//
// January 1, 2009
// Lab 4
// Priority Encoder
//
//

/* 

Priority Encoder
If the sel input is one, the output corresponds to 

I= 1 ==================================> nout=0
I= 0 ==================================> nout=1
I= x ==================================> y=0
I= 1, x ==================================> y=1
I =1, 0, x, y,z, ~x,endmodule
