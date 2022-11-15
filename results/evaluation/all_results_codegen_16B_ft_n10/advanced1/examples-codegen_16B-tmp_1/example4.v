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

 wire temp;
 assign temp=a[7]+b[7];
 wire [7:0] carry;
 assign carry[0]= temp[0] || ~ a[7] || ~ b[7];
 assign carry[1]= temp[1] || ~ a[7] && temp[0] || ~ b[7] && ~ temp[0];
 assign carry[2]= temp[2] || ~ a[7] && temp[1] || ~ b[7] && temp[0];
 assign carry[3]= temp[3] || ~ a[7] && temp[2] || ~ b[7] && temp[1];
 assign carry[4]= temp[4] || ~ a[7] && temp[3] || ~ b[7] && temp[2];
 assign carry[5]= temp[5] || ~ a[7] && temp[4] || ~ b[endmodule
