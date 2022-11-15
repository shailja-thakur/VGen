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


// For example, if a is a minus number -10 and b is a plus number 5, the output result is -5 and the output overflow is -1. 


// --------------------------------------------------------------------------------
//
  always @(posedge clk or
          posedge clk_rising or
          posedge clk_falling or
          negedge clk_rising_r or
          negedge clk_falling_r)
  begin
    s <= a + b;
  end

  //for example, if a is a minus number -10 and b is a plus number 5, the output result is -5 and the output overflow is -1. 
  always @(posedge clk or
          posedge clk_rising or
          posedge clk_falling or
          negedge clk_rising_r or
          negedge clk_falling_endmodule
