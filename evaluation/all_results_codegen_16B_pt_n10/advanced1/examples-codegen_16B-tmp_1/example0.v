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

    // The = operator performs binary integer addition.
    // The right-hand operand is subtracted from the left-hand, while an 0 is still left on the output.

    //Underflow is detected at the output by the compare operator, which compares an input value to zero and 
    //returns 0 if two things are equal and the number is 0, otherwise it will return 1.

    // Overflow is detected by comparing the xth and the (x-1)th bit of the operand, setting the overflow bit, 
    // which by design is at location 6 in each register, to 1 if the most significant bit of s and x are different 
    // The bit at location 6 is logically shifted right once before being stored. 
    // The first address after a pointer is at location 0. 
    // Set that address to 0 with a set, and check by comparator at the second address

endmodule
