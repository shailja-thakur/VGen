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


// Inputs
// Output
// Output
// Output

// Constraints
// 0 <= a[i] <= 127
// 0 <= b[i] <= 127
// 0 <= s[i] <= 127
// overflow is either 1 or 0
// s = a + b - overflow
// a >= b

// Possible cases
1. overflow = 1, s = a
2. overflow = 0, s = a + b - 1

// Output
// s[7:0] = a[7:0] + b[7:0]

// Assumptions
// A and B are two 8-bit unsigned values
// S is a 8-bit unsigned value

// Sources
// https://github.com/flozan/SATCounterExample/
// https://www.hackerrank.com/challenges/two-pointers/problem

#include <endmodule
