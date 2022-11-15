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

    signed_adder begin
    
        //s <= a + b
        s <= a + b
        //if s[msb] = 1 and a[msb] = 1 then s[msb] = 1
        //if s[msb] = 0 and a[msb] = 1 then s[msb] = 0 
        //if s[msb] = 0 and a[msb] = 0 then s[msb] = 0
        //overflow = 1
        //overflow <= a[msb] and b[msb] and s[msb]
        //overflow <= a[msb] and b[msb]
        //overflow <= a[msb] and s[msb]
        //overflow <= b[msb] and s[msb]
        //overflow <= a[msb]
        //overend
endmodule
