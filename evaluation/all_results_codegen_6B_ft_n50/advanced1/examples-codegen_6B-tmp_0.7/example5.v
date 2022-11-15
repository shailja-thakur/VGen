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


wire signed [7:0] b_signed; // b is treated as signed in this modeling, see more on signed vs. unsigned


// there are 2 ways to solve this...
assign b_signed = (b[6]==1'b1) ? ~b+1 : b; // when b is negative, b_signed is negative
//assign b_signed = b; // when b is positive, b_signed is positive

assign s = a + b_signed;	// add the unsigned numbers a and b

//assign overflow = (a[6]&b[6]) | (a[7]&b[6]);	// set the output overflow flag
assign overflow = (a[6]^b[6]) | (a[7]^b[6]);	// xor to get the output overflow flag


endmodule
