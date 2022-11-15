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



wire signed [7:0] b_signed = {b[6:0],b[7]};
wire signed [7:0] signed_sum;
wire signed_overflow;

// add a and b
alu_add_8 add_a(.a(a),.b(b),.s(signed_sum),.overflow(signed_overflow));


// set the carry output of add_a to be the carry input of add_b
assign carry_out = b_signed[7];



// add_b and signed_sum
alu_add_8 add_b_and_s(.a(b_signed),.b(signed_sum),.s(s),.overflow(overflow));

endmodule
