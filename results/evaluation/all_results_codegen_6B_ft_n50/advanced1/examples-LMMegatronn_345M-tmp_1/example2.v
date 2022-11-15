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

  wire s2 = a[7] & b[7];
  wire s3 = b[7] & c[7]; 
  wire cout =  s2 | s3 | carry; 
  wireoverflow = (~s2 & ~s3 & ~c[7]) | (c[7] & ~s2 & ~c[7]); 
  wire [3:0] s4 = {cout, s4, 1'b1}; 
  
  assign s = {s4, s3, s2, s1}; 
  assign overflow = c[3]; 
  assign s4 = {cout, s3, s2, cout}; 
endmodule
