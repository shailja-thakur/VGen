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


// The input a is represented as a decimal number in the range [-32768, 32767]. 
// The input b is represented as a decimal number in the range [-32768, 32767]. 
// The input overflow is represented as a decimal number in the range [0, 1].

function add(a, b) {
  //overflow := a[6] + b[6]
  //s[6] := a[6] + b[6] + overflow + (a[5] + b[5] + overflow) + (a[4] + b[4] + overflow) + (a[3] + b[3] + overflow) + (a[2] + b[2] + overflow) + (a[1] + b[1] + overflow) + (a[0] + b[0] + overflow)
  overflow = 0;
  endmodule
