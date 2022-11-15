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


// differentiate between a positive and negative a
extended_8b a_ext;

// sign extension 
assign a_ext = {a{31{b{7{s[7}}{8{a[7]} + b[7]}}{12{s[6} + 1}}}}};
// note: s[7] is the most significant bit of s because s is 8-bits and gets extended to 16bits

// invert the a_ext to differentiate between a positive and negative a
assign a = {!a_ext};

// bitwise addition 
assign s = {!a + b};

// Signed overflow occurs when a signed addition results in a positive sum of {10{s(most significant bit = 1)}}
assign overflow = {a_ext >= s};

endmodule
