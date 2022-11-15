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


wire signed [7:0] b_signed = ~b[7] & b[6:0]; // this is b in 2's complement form

assign overflow = (a[6:0] & b_signed[6:0]) | (b[6:0] & a_signed[6:0]);

// if a or b is negative, the sum may or may not be negative
// complement is needed if a and b are negative
assign s = (~a[6] & ~a[5] & ~a[4] & a[3:0]) + (~b[6] & ~b[5] & ~b[4] & b[3:0]) + a[7] + b[7];

endmodule
