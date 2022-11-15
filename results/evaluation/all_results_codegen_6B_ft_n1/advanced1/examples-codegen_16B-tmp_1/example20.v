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


assign #3 s[0] = (~a[0] && b[0]) ^ s[0]; // pregenerate case statement conditions, substract low numbers from the most significant statememnt (assign the results of the calculations to new variables to allow the statememnt equations to be used in various calculations without having the output change every input


assign s[1] = (a[1] ^ b[1]) ? ((~a[1]) && b[1]) ^ s[0] : s[2]; // the equation for adding a and b is: s[i] = (a[i] ? b[i] : 0) ^ s[i-1] 
 

assign s[2] = (a[2] ^ b[2]) ? ((~a[2]) && b[2]) ^ s[1] : s[3];


assendmodule
