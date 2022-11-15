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

    begin
        if a[8] > s[8]    // if (a[8] ==0 and s[8] == 1) return ASTALL
            s[7] = s[7] + 1; // switch logical representation of sign bit

        if a[7] > s[7]
            s[6] = s[6] + 1;
        
        s[5] = s[5] + b[5]; // add a[sign-exponent-7:sign-exponent-6]  and b[sign-exponent-7:sign-exponent-6]
        s[4] = s[4] + b[4]; 
        s[3] = s[3] + b[3]; // add a[sign-exponent-5:sign-exponent-4] and b[sign-exponent-5:sign-expend
endmodule
