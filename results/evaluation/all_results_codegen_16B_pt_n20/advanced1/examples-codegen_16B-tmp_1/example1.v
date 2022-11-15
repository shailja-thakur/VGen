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

    
s = (a ^ b) + s;
s = (a & (b -1)) + s;
  
 * overflow = ((a^b)|(a&b)-1)|(a&s)-(b^s);
 * 
 * output1[0] = s[0];
 * output1[1] = s[1] + (overflow[0] != s[1]);
 * output1[2] = s[2];
 * Split s[2:0] into result1 and result2
 * output1[3] = result1[2];
 * output1[4] = result2[2];
 * output1[5] = s[3];
 *  output1[6] = s[4];
 *  
endmodule
