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


assign overflow = (~a[7] & b[7] & s[7] | a[7] & ~b[7] & ~s[7], 

//if a[7]&b[7] is true, then gain a signed overflow comparing to (~a[7] & b[7] & ~s[7] | ~b[7] & s[7] & a[7])

//if the subtracting of b's most significant bits and s's most significant bits form 4 bits, 
//then we are okay those bits that are staying the same, because in these cases, we can have that a[7] and b[7] are false

//same goes for that b[7] has to be 't' to obtain a negative number b[7] and some gonna be a[7] and we know that a[7] has to be a to have aendmodule
