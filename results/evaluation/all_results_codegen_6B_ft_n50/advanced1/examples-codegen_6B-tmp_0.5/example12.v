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


wire signed [7:0] b_signed = {b[6:0], b[7]};

wire [7:0] a_and_b_signed;

assign a_and_b_signed = a & b_signed;

wire [7:0] s_signed;

assign s_signed = a_and_b_signed + b;

assign overflow = ((a[7] & b[7]) & ~s[7]) | ((~(a[7] | b[7])) & s[7]);

// assigns the least significant bit of s to s[0], the most significant bit of s to s[7]
assign s[0] = s_signed[0];
assign s[7:1] = s_signed[7:1];

endmodule
