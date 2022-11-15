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


wire signed [7:0] b_signed;

assign b_signed = ~b; // b_signed is the 2's complemented of b

assign s = a + b_signed + 8'b00000001; // s is the sum in 2's complement of a and b.

// If a or b is high, the sum is high, otherwise is low
assign overflow = (a[7] & b_signed[7]) | (b[7] & a[7]); 

endmodule
