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


// The output of the adder is the sum of the two inputs. 
// The overflow output is the occurence of a signed overflow. 
// The overflow output is asserted when the most significant bit of a or b is 1 and the most significant bit of s is 0. 

// The implementation of the adder is based on the following formula:

// Sum(a,b) = (a^b) + (a & b)
// Overflow(a,b) = (a^b) > (a & b)

// For the implementation of the signed adder, the overflow is checked for every sum and product. 
// The overflow is asserted when the result is a signed overflow. 

// The implementation of the adder is based on the following formula:

// Sum(a,b) = (a^b) + (a & b)
// Overflow(endmodule
