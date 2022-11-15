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


wire [7:0] b_ext; // The most significant of b is replaced with the extension of the most significant bit of b.
// this wires the output of the most significant of b.

assign b_ext = {{1{b[7]}},b[7:1]}; // Replaces the most significant of b with the extension of b.

// adds a and b and stores the output in the register s.
// Overflow is set to 0.

adder_8 adder(.a(a), .b(b_ext), .s(s), .overflow(overflow));

endmodule
