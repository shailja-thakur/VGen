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


// The following code is a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 
// The result is stored in the output s[7:0]. 
// The result is saturated to 8-bit 2's complement if the result is negative. 
// The result is saturated to the most significant bit of the input a and b if the result is positive. 
// The result is saturated to the least significant bit of the input a and b if the result is negative. 
// The result is saturated to the least significant bit of the input a and b if the result is positive. 

module signed_adder_saturated(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to theendmodule
