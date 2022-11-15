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


parameter overflow = signed_overflow(a, b);

function signed_overflow(a, b)
    return a[7:0] > b[7:0] && s[7:0] > a[7:0];
endfunction

function signed_add(a, b, s)
    s[7:0] = a[7:0] + b[7:0];
    s[7:0] = signed_overflow(a, b) ? overflow : s[7:0];
endfunction



signed_add(a[7:0], b[7:0], s[7:0]);

// assume that the signed overflow of a and b is not a problem

signed_add(a[7:0], b[7:0], s[7:0]);

// assume that the signed overflow of a andendmodule
