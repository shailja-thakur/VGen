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


wire signed [7:0] b_signed = (b[7] == 1'b1) ? ~b + 1'b1 : b;

// if a or b is negative, make b by the 2's complement of b.
// if a or b is zero, make b by itself.
// if a or b is positive, make b by the 2's complement of a.

assign b_signed = ((a[7] == 1'b1) || (b[7] == 1'b1)) ? ~b_signed + 1'b1 : b_signed; 

assign s = ((a[7] == 1'b1) || (b[7] == 1'b1)) ? ~a + 1'b1 : a; 

assign overflow = ((a[7] == 1'b1) && (b[7] == 1endmodule
