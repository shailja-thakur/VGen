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


wire signed [7:0] b_minus_a;
wire signed [7:0] b_minus_a_minus_1;
wire signed [7:0] b_minus_a_minus_2;
wire signed [7:0] b_minus_a_minus_3;
wire signed [7:0] b_minus_a_minus_4;

assign b_minus_a = b[7] ? ~b + 1'b1 : b;
assign b_minus_a_minus_1 = b_minus_a - 1'b1;
assign b_minus_a_minus_2 = b_minus_a_minus_1 - 1'b1;
assign b_minus_a_minus_3 = b_minus_a_minus_2 - 1'b1;
assign b_minus_a_endmodule
