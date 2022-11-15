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



// The most significant bit of the adder output is set to the most significant bit of the operand with the sign bit of the operand
// and the least significant bit of the adder out from the sign bit of the operand.

wire signed [7:0] four_bit_representation_of_a;
wire signed [7:0] four_bit_representation_of_b;
wire [7:0] four_bit_representation_of_s;

assign four_bit_representation_of_a = {a,7'b0};
assign four_bit_representation_of_b = {b,7'b0};
assign four_bit_representation_of_s = {four_bit_representation_of_a + four_bit_representation_of_b,7'b0};

assignendmodule
