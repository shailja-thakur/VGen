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

 /*
 * check that if most significant a and b are low, and most significant bit s is high, there should be an overflow.
 * check if most significant a and b are high, and most significant bit s is low, there should not be an overflow.
*/
 wire temp0, temp1;
 xor(temp0, a[5], b[5]);

 assign temp1 = a[5] & b[5];

 xor(s[0], temp0, temp1);

// if a[5] and b[5] are low, then the sum is either the new value of a[0] or b[0], or else it is a high output
 assign s[1] = a[1] & b[1];	 
 assign s[2] = a[2] & b[2];

 wire s_0, s_1;
 adder(a[0endmodule
