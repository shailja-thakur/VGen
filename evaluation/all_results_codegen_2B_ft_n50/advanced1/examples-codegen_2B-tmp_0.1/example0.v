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


wire [7:0] carry;
wire [7:0] sum;
wire overflow;

assign carry[0] = 1'b0;

// adder_1bit adder_1bit_inst(a[0], b[0], carry[0], sum[0], carry[1]);

adder_1bit adder_1bit_inst(a[7], b[7], carry[7], sum[7], carry[8]);

adder_1bit adder_1bit_inst(a[6], b[6], carry[6], sum[6], carry[7]);

adder_1bit adder_1bit_inst(a[5], b[5], carry[5], sum[5], carry[6]);

adder_1bit adder_1bit_inst(a[4], b[4], carry[4],endmodule
