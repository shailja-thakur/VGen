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


// if the most significant bit of a is low and the most significant bit of b is high, the signed adder will add the numbers and set the overflow high
assign overflow = (a[7] & b[7]) | ((~a[7]) & (~b[7]) & s[7]);

// if the most significant bit of a is high and the most significant bit of b is low, the signed adder will add the numbers and set the overflow low
assign overflow = (a[7] & (~b[7])) | ((~a[7]) & b[7]);

// if the most significant bit of a and b are both high or both low, the signed adder will not add the numbers to the output s
assign overflow = 0;

// assign the output to the output s
assign s = a + b;

endmodule
