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


// Add two 8-bit 2's complement numbers a and b and store the result in s. 
// Assume all the bits of a and b are 0's. 

// The sign of the result s is the same as the sign of the most significant bit of a and b. 

// The result of this function is only valid if the sign of a and b is the same as the sign of s. 

// s overflow occurs if the most significant bit of a or b is 1 and the most significant bit of s is 0
// The result of this function is only valid if the sign of a and b is the same as the sign of s.



// Driver code

signed_adder a_b_s_o = 
    (
        // a
        {1, 0, 0, 0, 1, 0, 0, 0},

        // b
        {0, 1endmodule
