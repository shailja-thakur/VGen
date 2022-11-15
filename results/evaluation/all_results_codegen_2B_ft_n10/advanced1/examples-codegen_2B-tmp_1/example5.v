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



// Create an 8-bit full adder function. 

// Give each equation a name based on its position in the sequence: 

// A full adder for a, b, carryin, s, and overflow. 
// Create an 8-bit ripple carry adder for each of the equations. 

// Assign a rolled-up version of the equations to the ripple_carry_adder_four.dll output for each ripple carry adder (n) component. 
// Execute the equations one by one, and then concatenate the product terms (e.g., in the cofactor's range) by unattended implicit arithmetic operations.
// Put the items in the newly created module where they need to be. 

// It sounds good, yes. 
// The original equation: a + b + carryin = s, which has an handling for a carryin of zero. 


endmodule
