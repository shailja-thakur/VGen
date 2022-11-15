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



// Create a 8-bit 2's complement number, b_com, with the value of b.
// Create a 8-bit 2's complement number, a_com, with the value of a.
// Create a 8-bit 2's complement number, s_com, with the value of s.
// Create a 4-bit 2's complement number, overflow, with the value of 1'b0.

// Create a 4-bit 2's complement number, b_inv, with the value of b_com.
// Create a 4-bit 2's complement number, a_inv, with the value of a_com.
// Create a 4-bit 2's complement number, s_inv, with the value of s_com.
// Create a 4-bit 2's complement number, overflow_inv, with the value of overflow.

// Create a 4-bit 2's complement number, b_endmodule
