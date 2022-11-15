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


// 1. if a is 0 and b is 0, return 0
// 2. if a is 0 and b is 1, return b
// 3. if a is 0 and b is -1, return a
// 4. if a is 1 and b is 0, return a
// 5. if a is 1 and b is 1, return a+b
// 6. if a is 1 and b is -1, return a+b
// 7. otherwise return a+b
//
input a[7:0], b[7:0];
output s[7:0];
output overflow;

assign overflow = (a[7]<0) AND (b[7]<0);

endmodule
