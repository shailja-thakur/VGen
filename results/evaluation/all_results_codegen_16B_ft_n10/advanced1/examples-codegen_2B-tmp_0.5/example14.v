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


// A signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0].
// 
// Inputs:
// 
// a[7:0] - 8-bit number
// b[7:0] - 8-bit number
// s[7:0] - 8-bit number
// overflow[7:0] - 8-bit number
// 
// Outputs:
// 
// s[7:0] - 8-bit number
// overflow[7:0] - 8-bit number
// 
// Constraints:
// 
// 1 <= a[i:0] <= 255
// 1 <= b[i:0] <= 255
// 0 <= s[i:0] <= 255
// 0 <= overflow[i:0] <= 255
// 
// 1 <= a[iendmodule
