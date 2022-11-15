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


// if both a and b are negative, then the sum s and overflow will be negative as well. 
// this is because the most significant bit of the sum s will be the sign of the most significant bit of a or b. 

// the general formula for the addition of two numbers of any size is:

// sum ( a + b )

// where a and b are of the same size. 

// the general formula for the subtraction of ( a - b ) is:

// sum ( a - b )
// where a and b are of the same size.

// if only one of the inputs is a negative number, then the result will be a positive number and the overflow will be a negative number.

// the formula for the addition of two numbers of any size is:

// sum ( a + b )

// where a and b are of the same size.
endmodule
