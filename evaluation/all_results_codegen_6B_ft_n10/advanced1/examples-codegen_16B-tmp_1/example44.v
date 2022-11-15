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

 wire [8:0] temp_sum;

 wire signed [7:0] sum1;
 wire signed [7:0] sum2;

 xor sum1_xor(sum1[7],a[7],b[7]);
 xor sum2_xor(sum2[7],sum1[7],s[7]);
 xor temp_sum_xtro[7],sum2[7],sum1[7];
 xor temp_sum_xor(temp_sum[7],temp_sum[6],temp_sum[7]);
 rotateright sum_ror(temp_sum[7:0],sum2[7:0],b[7:0]);

 xor sum2_xor(sum2[6],sum2[7],temp_sum[7]);
 xor sum1_xor(sum1[6],sum1[7],endmodule
