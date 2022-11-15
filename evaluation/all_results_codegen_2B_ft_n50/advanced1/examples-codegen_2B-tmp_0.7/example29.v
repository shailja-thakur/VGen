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


wire signed [8:0] carry;
wire [8:0] a_andb;
wire [8:0] b_and_carry;
wire s_is_overflow;

assign a_andb = a & b;
assign b_and_carry = b & carry;
assign carry = a_andb + b_and_carry;
assign s = carry[7:0];
assign overflow = carry[8];
endmodule
