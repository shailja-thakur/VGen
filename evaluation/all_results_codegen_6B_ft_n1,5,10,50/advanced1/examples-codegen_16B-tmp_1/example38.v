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

 wire overflow_wire, complement_of_a, sign_of_b;
 wire [7:0] lost_bits, unmasked_b, bp_extended, b_complement;
wire [7:0] a_sub_b, b_sub_a, a_or_b, a_and_b;
assign sign_of_b = b[7];
assign override_complement_of_a = (a[7] == 0);
assign complement_of_a = (override_complement_of_a == 1) ? ~a[7] : a[7];
assign sign_of_a = (override_complement_of_a == 1) ? ~a[7] : a[7];
assign sign_of_b_complement = ~b[7];

assign lost_bits =endmodule
