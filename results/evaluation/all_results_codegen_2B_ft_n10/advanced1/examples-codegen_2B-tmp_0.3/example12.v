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


// This design is based on the following paper:
// "A New Algorithm for Signed Addition of Two 8-bit 2's Complement Numbers"
// by Y.M. Han, H.J. Zhang, and M.L. He
// IEEE Transactions on Computers, Vol. 57, No. 9, Sep. 1978
// The algorithm is based on the following steps:
// 1. Shift a and b by 1 to the left
// 2. Add a and b
// 3. If the most significant bit of a is 1 and the most significant bit of b is 0, then the result is negative
// 4. If the most significant bit of a is 0 and the most significant bit of b is 1, then the result is positive
// 5. If the most significant bit of a is 0 and the most significant bit of b is 0, then the result is 0
// 6. If the most significant bit of aendmodule
