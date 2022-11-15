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


wire signed [7:0] b_signed; // b is treated as signed, therefore we have to use signed [7:0] in the adder

assign b_signed = -b; // b is added with 2s complement of b, therefore we have to add 2s complement of b to b_signed

adder adder1(a, b_signed, s, overflow); // adder1 is a normal adder that adds two numbers

assign overflow = (a[7] & b_signed[7]) | (b_signed[7] & a[7]); 

endmodule
