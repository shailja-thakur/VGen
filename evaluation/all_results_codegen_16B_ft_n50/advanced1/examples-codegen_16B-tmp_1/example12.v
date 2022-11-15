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

	assign overflow = ((a[7] == 0) & (b[7] == 0) & (s[7] != 0)) | // aNorb if the sign bit in S goes high first, then it signed overflows out.
	((a[7] == 1) & (b[7] == 1) & (s[7] == 0)) | // aB8orB8 if the sign bit in S goes low, then it is overflowed out.
	((a[7] == 1) & (b[7] == 0) & (s[7] == 1)); // aB8orAnOrB8 if the sign bit in S is flipped from what is being added, then the overflow is occuring.

// If the most significant bits of a and b are zero, then the sign bit of s must be one for a signed overflow to occur. 
// yet, ifendmodule
