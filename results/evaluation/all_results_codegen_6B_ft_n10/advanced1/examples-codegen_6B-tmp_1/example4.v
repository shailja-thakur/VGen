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


wire signed_a_shr0_b_shr0;
wire signed_a_shr1_b_shr1;
wire signed_a_shr2_b_shr2;
wire signed_a_shr3_b_shr3;

assign signed_a_shr0_b_shr0 = a[0]^b[0];
assign signed_a_shr1_b_shr1 = a[1]^b[1];
assign signed_a_shr2_b_shr2 = a[2]^b[2];
assign signed_a_shr3_b_shr3 = a[3]^b[3];

assign s = signed_a_shr0_b_shr0 + 36'shA + signed_a_shr1_b_shr1 + 36'shA + signed_a_shr2_endmodule
