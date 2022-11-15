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
wire [7:0] overflow;

// carry out is the carry out of the adder
assign carry[0] = 1'b0;

// overflow is the overflow of the adder
assign overflow[0] = 1'b0;

// adder
fa_adder adder(a[7:0], b[7:0], carry[7:1], s[7:0], overflow[7:0]);

// carry out is the carry out of the adder
assign carry[8:1] = overflow[7:0];

// overflow is the overflow of the adder
assign overflow[8:0] = carry[7:1];

endmodule
