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


signed_adder: signed_adder ( a, b, s, overflow )

// Design a pipe line adder, a,b,s,o, that copies each input letter to the next output letter

//a: output[0] = input[0], otherwise a = 0
//b: output[0] = input[1], otherwise b = 0
//s: output[0] = input[2],

// Any individual input letter can only be added to the signal once.
// We can pass any number of inputs to this adder.
// The input to the adder will never go to the same register more than once,
// but it may go to the same register but not the same letter more than once. 

// overflow input is always an unused input. Inputs are 7-bit wide.

// so we can calculate this from the s and a in forward traversal

endmodule
