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



// if the most sigant bits of a and b are the same assume b > a and assign the value of a to s




// if the most significant bit of a and b are low and the most significant bit of s is high, then assume signed overflow 
// occurs if a/b > s. If the most significant bit of a and b are high and the most significant bit of s is low then assume signed overflow
// occurs if s/a > b. Otherwise, no signed overflow occurs.


add_seven_bit adder_1(.a(a[7:0]),
 .b(b[7:0]),
 .cin(0),
 .s(s[7:0]),
 .cout(overflow));

add_seven_bit adder_2(.a(a[7:0]),
 .b(b[7:0]),
 .cin(overendmodule
