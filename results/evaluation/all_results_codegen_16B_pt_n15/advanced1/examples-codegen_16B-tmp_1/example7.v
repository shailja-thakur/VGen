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


// The numbers a and b are added to the output s and an extra logical carry bit is added to s. 
// assign the logical carry of a and b to the overflow. a logical carry occurs if the most significant bit of both a and b is low.
// a logical cory is also set in the case when the most serivce bit of s is low and the most significant bit of both are high
// a logical carry is also set in the case when the most significant bit of both a and b and s are high and the most significant bit of s is low.

// a logical carry may also be set if a or b is a negative number 
  assign [7:0] carry = IF s[7]='1' THEN '0' ELSE '1'; 

// Add a[7:0] to s[7:0] with logical carry from input carry
assign s = ((endmodule
