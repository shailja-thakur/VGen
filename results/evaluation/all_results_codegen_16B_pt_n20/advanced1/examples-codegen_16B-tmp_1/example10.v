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

    assign s = a + b;
    assign overflow = (a[31] == b[31] && s[31] == ~s[30]) || 
                        ((b[28] == a[28] && b[31] == 0x0 || b[31] == a[31]) && s[31] == s[30] && 
        (a[28] == 0x0 || a[29] == a[31] || a[31] == 0x0) &&
        s[30] == a[30]) ||
        ((a[28] == 0x0 || b[28] == 0x0 || b[29] != 0x0) && s[30] == 0x0 && a[31] == b[31] && 
        a[28] == 0x0) ||
        ((a[30] != 0x0 &&endmodule
