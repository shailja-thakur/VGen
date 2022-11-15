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



// Create a 16-bit ripple carry adder
wire [15:0] carry;
wire [7:0] sum;
wire overflow;

// Create the two 8-bit 2's complement adders
wire [7:0] a_b;
wire [7:0] b_a;

// Create the carry in for the ripple adder
wire [7:0] carry_in;

// Create the carry out for the ripple adder
wire [7:0] carry_out;

// Create the final output
wire [7:0] final_sum;

// Create the final overflow output
wire final_overflow;

// Create the carry in for the second 8-bit 2's complement adder
wire [7:0] carry_in_b;

// Create the carry out for the second 8-bit 2's complement adder
wireendmodule
