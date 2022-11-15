// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low



// Create a 8-bit, two's complement, adder 
// Declare an 8-bit, two's complement, output result as s
// Declare an 1-bit output overflow as overflow



//If the adders result in overflow, then the overflow occurs when the sign bit with methods sign_extend: ------------------------------------------------------------------------------
// if ( a[7] == !b[7] : s[7] == 1 : s[7] == 0 ) when they are different
// if ( a[7] == b[7] : s[7] == 0 : s[7] == 1 ) when they are the same
// assign overflow = ( a[7] ^ b[7] )?0:1;
//
// if 
// then 
// assign overflow = ( a[7] == b[7] )?1:0;
// --------------------------------------------------------
	
//endmodule
