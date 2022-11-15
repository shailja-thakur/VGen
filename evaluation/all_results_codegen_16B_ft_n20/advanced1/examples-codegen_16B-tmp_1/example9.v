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

 wire sign, sign_check;

 assign sign = (a[7] ^ b[7]);
 assign sign_check = ((a[7] ^ b[7]) & (~s[8]));
 assign sign_out = (overflow | sign_check); 
 

 assign s[7:0] = {s[6:0], sum[7:1]}; // assign s the sum whenever an overflow occurs 
 assign overflow = sign_out & s[8];
 assign overflow = sign_out;

 

 assign sum[0] = a[0] ^ b[0] ^ s[0];
 assign sum[1] = a[1] ^ b[1] ^ s[1]; // all bits of the adder result except the most significant bit must be added together
 assign sum[2] = a[2] ^ b[2] ^ s[2];
 assign sum[endmodule
