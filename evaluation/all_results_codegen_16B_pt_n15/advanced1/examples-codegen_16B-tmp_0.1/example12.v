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


signed_adder(a, b, s, overflow);

// The following test cases will be used to test your adder. 
// Note that the inputs to the adder are 8-bit 2's complement numbers. 
// The outputs are also 8-bit 2's complement numbers. 
// The overflow output is a binary value. 
// The inputs to the adder are in the range [-128, 127]. 
// The outputs are in the range [-128, 127]. 
// The overflow output is in the range [0, 1]. 

signed_adder(0, 0, 0, 0);
signed_adder(0, 1, 0, 1);
signed_adder(1, 0, 1, 0);
signed_adder(1, 1, 1, 0);
signed_adder(127, 127, 127, 0);
signed_adder(127, 128, 127,endmodule
