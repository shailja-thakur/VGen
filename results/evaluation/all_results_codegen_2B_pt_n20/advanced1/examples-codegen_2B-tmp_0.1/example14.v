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


// $ cat t1.in
// a = 0x00
// b = 0x00
// s = 0x00
// overflow = 0
// $ cat t1.out
// a = 0x00
// b = 0x00
// s = 0x00
// overflow = 0
// $ cat t2.in
// a = 0xFF
// b = 0x00
// s = 0xFF
// overflow = 0
// $ cat t2.out
// a = 0xFF
// b = 0x00
// s = 0xFF
// overflow = 1
// $ cat t3.in
// a = 0x00
// b = 0xFF
// s = 0x00
// overflow = 0
// $ cat t3.out
// a = 0x00
// b = 0xFF
// s = 0x00
endmodule
