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


always @ (a[7] && b[7]) 
   s <= s + a[7:0] + b[7:0]
   overflow <= overflow && (s[7] || (s[6] && (a[6] || b[6]))); 

always @ (a[6:0] && b[6:0]) 
   s <= s + a[6:0] + b[6:0]
   overflow <= overflow && (s[7] || (s[6] && (a[5:0] || b[5:0]))); 

always @ (a[5:0] && b[5:0]) 
   s <= s + a[5:0] + b[5:0]
   overflow <= overflow && (s[7] || (s[6] && (a[4endmodule
