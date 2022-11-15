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
wire signed [7:0] signed_a_interm; 

assign b_signed = ~b;
// the above statement is a one-dimensional array of 8 elements, 8'b or 8'b

//assign signed_a_interm = a ^ b_signed;
// the above statement is a one-dimensional array of 8 elements, 8'b or 8'b

assign signed_a_interm = a + b_signed + 8'b00000001; 

assign s = signed_a_interm[7:0];
// s is the signed sum
//assign overflow = (a[7] & b_signed[7]) | (b[7] & signed_a_interm[7]);
//nand(overflow, a[7], b_signed[endmodule
