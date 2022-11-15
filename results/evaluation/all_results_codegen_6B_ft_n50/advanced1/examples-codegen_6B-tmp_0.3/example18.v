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



//If the most significant bit of a or b is high, then the sum is negative
//Include a 1 in the most significant bit of s to indicate a negative sum

assign s = (a[7]^b[7]) ? ((~a[7]&b[7]) ? 8'b11111111 : 8'b11111111) : (a[7]&b[7]) ? ((a[7]&b[7]) ? 8'b11111111 : 8'b11111111) : 8'b00000000;

//If a or b is zero, then the sum is zero
//Include a 0 in the most significant bit of s to indicate a zero sum

assign overflow = ((a[7]^b[7]) & (a[7]|b[7])) ? 1'b1 : ((a[7]&b[7]) & (aendmodule
