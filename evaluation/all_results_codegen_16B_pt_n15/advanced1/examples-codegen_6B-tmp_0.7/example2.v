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


wire signed [7:0] b_signed = {b[6:0],b[7]};

// makes b into a 2s complement of b

wire signed_b_signed = ~b_signed +1;

// adds a and b

wire signed [7:0] a_and_b_signed = {a[6:0],a[7]};

// makes a into a 2s complement of a

wire signed_a_and_b_signed = ~a_and_b_signed +1;

assign s = a_and_b_signed + b_signed;

assign overflow = ((a[6:0] & b[6:0]) & ~(a[7] | b[7])) | ((~(a[6:0] | b[6:0])) & (a[7] |endmodule
