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



// assign the overflow field to zero if there is no overflow or to the output of the adder otherwise
assign overflow = (a[7] == b[7])?(a[7] ^ s[7]):(~(a[7]) ^ b[7]); 


// adder with result
adder a1(a[0], b[0], s[0], ci);
adder a2(a[1], b[1], s[1], c[0]);
adder a3(a[2], b[2], s[2], c[1]);
adder a4(a[3], b[3], s[3], c[2]);
adder a5(a[4], b[4], s[4], c[3]);
adder a6(a[5], b[5], s[5], c[4]);
adder a7(endmodule
