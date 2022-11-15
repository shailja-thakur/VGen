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

 assign overflow = a[7] & b[7] & s[7];
 
 // The actual addition of the most significant 8-bits of (a + b) to the least significant 8-bits of s requires 101 operations. 
 // Since the operation is carried only through the output s, all the calculations can be done in parallel on the inputs only. 
 // Each total of 8 operations corresponds to adding two 8-bit numbers together, hence a simple parallel adder construction is used.

 always @(a, b)
 when (a[7] ^ b[7] ^ s[7]) // if the two most significant bits of a or b are not the same as the most significant bit s it indicates an overflow
 	begin // an overflow is adped to the result s
 li mult_a[7:0] = {1'b1, a[7:0]}; // assigns a copy of a toendmodule
