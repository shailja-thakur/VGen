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



// The adder should be designed using two's complement of the numbers a and b.
// The output should be a signed number.

// If the final result is negative, the most significant bit should be set to 1.
// If the final result is positive, the most significant bit should be set to 0.

// The output should be of size 8 bits.

// The adder should return the signed sum of the two numbers.

// If the sum is negative, the final result should be a signed number with a negative sign bit.
// If the sum is positive, the final result should be a signed number with a positive sign bit.

// The final result should be of size 8 bits.

endmodule
