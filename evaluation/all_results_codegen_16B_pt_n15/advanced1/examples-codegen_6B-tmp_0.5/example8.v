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



// if the most significant bit of a and b is low then the sum is negative and the most significant bit of s is high
// if the most significant bit of a and b is high then the sum is positive and the most significant bit of s is low

// if signed overflow occurs then the output is the signed sum
assign s = ((a[7]^b[7])&(a[7]^s[7])) ? (a[7]?(a-b):(b-a)) : (a[7]?(a+b):(a+b));

assign overflow = ((a[7]^b[7])&(a[7]^s[7])) ? ((a[7]&b[7])?(1'b1):(1'b0)) : ((a[7]&b[7])?(1'b0):endmodule
