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


assign s = a + b;
assign overflow = ((a[7]&b[7])&~s[7]) | ((~a[7]&~b[7])&s[7]);

//If a or b are negative, the sum may or may not be negative.
//In order to get the correct sum, the first bit of s is set to 0 when a or b are negative.
//It can be seen that a and b are both negative when s is negative.
//a and b are negative when a or b carry out.
//s is negative when it carries out.
//This is the case when s[7] is high.
//The case where the first bit is high indicates a negative sum.

endmodule
