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


if a or b is negative, signed overflow occurs


assign s = a + b

// s is assigned a[7:0]'s 000 signal value, while a and b are assigned its values in binary.
// b is assigned a[7]'s 00 signal value, while a is assigned its value in binary.
// b is assigned a[6]'s 01 signal value, while a is assigned its value to 010010010 in binary

// The most significant bit of the output s is the "carry bit", meaning the bit that determines whether it is one or zero

// the carry-bit can also be named as the most significant bit of the binary addition of two unsigned integers 

// The carry bit will always == 1 if a and b are signed numbers. 
//

assign overflow = (a && b)? true: false;




endmodule
