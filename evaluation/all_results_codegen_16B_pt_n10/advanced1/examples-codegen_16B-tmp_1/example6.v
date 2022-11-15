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

    s = (s + a) ^ ((s + b) ^ a);
    overflow = ((s >> 15) & (a >> 15)) | ((s >> 15) & (b >> 15));

digital logic network
Digital logic network consists of simple devices arranged in logic circuits for performing logical operations and for directly connecting logic elements and simple devices 

Adders are devices that have two inputs, called the first operand a and the second or addend b, called the second operand, and an output called the sum c. 
Some adders such as carry-out adders can add up to a number of bits first. The arithmetic, the addition, can be any type. 

A carry-out adder's output c may be in one of two states. 
One state has carry to the most significant digit and is called a negative carry-out. 
The other state has no carry. 

endmodule
