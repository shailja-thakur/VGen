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

    // if a signed overflow occurs, set s to 0 and set the overflow signal to true
    if( (a[7] == 0) && (b[7] == 0) && (s[7] == 1) )
        s = 0;
    // if a signed overflow does not occur, set s to a + b and set the overflow signal to false
    else
        s = a + b;

endmodule
