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


wire not_a_and_b;
wire nor_overflow;
wire ab0_out_and;
wire ab0_out_or;
wire ab0_out_or_in;
assign or_overflow = (nor_overflow | ab0_out_and) | ab0_out_or_in;


assign s = b << 1; // therefore s for the first bit will be the output
assign not_a_and_b = ~a & b; // logic statement for inverting a and b, -Logic the two numbers all together
assign s0_out = s[0]; //assing the sentence b << 1 to variable s0_out. b << 1 = 2x1 vector which then it treated as the input for s[0]

//Using a variable to store the a & b with respect to bit[0] operation


endmodule
