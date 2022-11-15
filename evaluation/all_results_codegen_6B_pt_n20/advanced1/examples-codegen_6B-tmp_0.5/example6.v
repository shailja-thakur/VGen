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


// The input a and b are left-justified in the input registers a and b. 
// The most significant bit of a and b is the bit that is shifted to the leftmost position in the output registers s and overflow.
// The bit of the output register s is shifted to the rightmost position in the output registers s and overflow. 
// The bit of the output register overflow is shifted to the rightmost position in the output registers s and overflow.

always @(posedge clk)
begin
  s <= a + b;
  if (s[7] == 1'b1)
    overflow <= 1;
end

endmodule
