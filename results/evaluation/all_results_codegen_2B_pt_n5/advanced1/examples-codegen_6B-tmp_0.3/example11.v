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


// The signed adder will be used to add two numbers. 
// The first number is a[7:0] and the second number is b[7:0]. 
// The output s is the sum of the two numbers. 
// The output overflow is the occurence of a signed overflow of a and b. 

always @(posedge clk)
  if (clk)
  {
    s <= a + b;
    if (s[7:0] > 127)
    {
      overflow <= 1;
    }
  }
endmodule
