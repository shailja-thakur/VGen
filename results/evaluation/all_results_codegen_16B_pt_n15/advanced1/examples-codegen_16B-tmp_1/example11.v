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

    assign strt_add = ( // a always positive and b never negative, s is positive
        a[7] + b[7] >= 128 && (!(s[7])))
        |
        (!(s[7]) && a[7] >= 128 && b[7] != 128) // a >= 128, b != 128, s never high but may be low
    );

    // always true
    assign s[7:6] = (((a[7:6] + b[7:6] + strt_add) < 128) & (!(a[7:0] + b[7:0] + strt_add + s[7:6]))) & 0xc0 & (~strt_add); 

endmodule
