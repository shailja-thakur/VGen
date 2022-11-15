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


// Implement the signed adder. 
// The binary representations of a and b are signed numbers, meaning that the most significant bit of each number is a one.
// A signed overflow occurs when the most significant bit of s is one. The least significant bit of s is zero.
// The signed overflow condition is only true if the most significant bit of a and b are low and the most significant bit of s is high. 


signed_adder(a, b, s, overflow);


// Test cases

a=0b00001111;
b=0b00001100;
s=0b00000000;
overflow=0;

signed_adder(a, b, s, overflow);

// s=0b11111111
// overflow=1

a=0b11111111;
b=0b11111110;
s=0b11111111;
overflow=0;endmodule
