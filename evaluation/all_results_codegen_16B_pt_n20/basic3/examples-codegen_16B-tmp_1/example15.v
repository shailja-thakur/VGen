// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out

(* positions = "01" *) static parameter [2:0] b = 0;

(* positions = "11" *) static parameter [2:0] a = 1;

// [29-28 bits are one's]
// When hl=1, output = b;
// When hl=0, output = a
always inline void high_bit_decoder( int sel, int hl ) 

{
  if ( sel)
  	output = b;
  else
  	output = a;
}

// Check bits (18-17 are zero)
always inline int HI_18(int val) {
	if ( !(val & (1>>17)) ) return 1;
	else return 0;
}

always inline int HI_19(int val) {
	ifendmodule
