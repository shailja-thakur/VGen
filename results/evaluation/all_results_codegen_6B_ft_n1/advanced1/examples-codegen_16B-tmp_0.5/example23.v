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


// This implementation uses an if-else statement and comparison operators to determine the sign of the sum.

// If the two most significant bits are the same, then the sum is positive.
// If the two most significant bits differ, then the sum is negative.

// The sign of the sum is assigned to the output variable s.
// An overflow is assigned to the output overflow.


assign s = a + b; // add the two numbers
assign overflow = (a[7] == b[7]) && (a[7] != s[7]); // determine if there is a signed overflow

endmodule
