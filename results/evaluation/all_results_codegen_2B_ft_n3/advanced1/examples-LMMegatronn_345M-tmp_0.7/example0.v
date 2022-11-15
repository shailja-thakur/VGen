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

  wire [7:0] s1 = a[7:0] + b[7:0];
  wire [7:0] s2 = s1 + s2;
  wire [7:0] s3 = s3 + s4;
  wire [7:0] s4 = s4 + s5;
  wire [7:0] s5 = s5 + s6;
  wire [7:0] s6 = s6 + s7;
  wire [7:0] s7 = s7 + s8;

  assign s = s2 + s3 + s4;
  assign overflow = s3[8] != s3[7];
endmodule
