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


assign s = (a[7:0] + b[7:0] + (a[10:8] - b[10:8]) [(15 == b[7]) | (15 == b[8]) | (15 == b[9])] + a[11:9]][17:16] += (b[8] - a[8])[(15 == a[9]) | (15 == a[10]) | (15 == a[11]) | (15 == a[12])] + a[12:10] + overflow;
endmodule
