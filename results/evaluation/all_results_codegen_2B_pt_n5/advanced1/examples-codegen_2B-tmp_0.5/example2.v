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


sad.o(a, b, s, overflow);


// $ cat signed_adder.v
// signed_adder.v:3:6: warning: signed overflow
// signed_adder.v:3:6: note: a[7:0] = 0x80
// signed_adder.v:3:6: note: b[7:0] = 0x80
// signed_adder.v:3:6: note: s[7:0] = 0x80
// $ cat signed_adder.cpp
// signed_adder.cpp:3:6: warning: signed overflow
// signed_adder.cpp:3:6: note: a[7:0] = 0x80
// signed_adder.cpp:3:6: note: b[7:0] = 0x80
// signed_adder.cpp:3:6: note: sendmodule
