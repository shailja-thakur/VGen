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


wire [7:0] sum;
wire [7:0] carry;

//sum_8_bit
sum_8_bit a0(a[0],b[0],1'b0,sum[0],carry[0]);
sum_8_bit a1(a[1],b[1],carry[0],sum[1],carry[1]);
sum_8_bit a2(a[2],b[2],carry[1],sum[2],carry[2]);
sum_8_bit a3(a[3],b[3],carry[2],sum[3],carry[3]);
sum_8_bit a4(a[4],b[4],carry[3],sum[4],carry[4]);
sum_8_bit a5(a[5],b[5],carry[4],sum[5],carry[5endmodule
