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


// The sum of a and b is stored in s. 
// The sum of a and b is the two's complement of the sum of the two's complement of a and b. 
// For example, given a = 1 and b = 2, the sum is 3. 
// The sum of a and b is the two's complement of the sum of the two's complement of a and b. 
// For example, given a = 1 and b = 2, the sum is 3. 
// The sum of a and b is the two's complement of the sum of the two's complement of a and b. 
// For example, given a = 1 and b = 2, the sum is 3. 
// The sum of a and b is the two's complement of the sum of the two's complement of a and b. 
// For example, given a = 1 and b = 2, the sum is 3endmodule
