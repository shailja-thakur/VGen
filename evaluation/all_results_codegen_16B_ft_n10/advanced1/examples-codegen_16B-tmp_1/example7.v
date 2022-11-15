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


reg of1, of2; 
wire sign, sign1, sign3; 
wire [7:0] bxor;
wire [7:0] array1[0:2];
wire [7:0] array2[0:2]; 
wire [7:0] array3[0:2];
wire [7:0] array4[0:2];
wire [7:0] array5[0:2];
wire [7:0] array6[0:2];
wire [7:0] sum1[0:1];
wire [7:0] sum2[0:1];
wire [7:0] sum3[0:1];
wire [7:0] sum4[0:1];
wire [7:0] sum5[0:1];
wire [7:0] sum6[0:1];endmodule
