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

 
 // assume that the inputs should have been checked to ensure neither or both are negative before the adder runs 

 // assign wire_g_a to wire -1	
assign wire_g_a = {~a[7], a};
 // assign wire_g_b to wire -b
assign wire_g_b = {~b[7], b};

 // add a +b and assign to wire_add_s
assign wire_add_s = wire_g_a + wire_g_b;
 //assign wire_add_s_carry = wire_add_s[8];
assign wire_add_s_carry = wire_add_s[7] + wire_add_s[6] + wire_add_s[5] + wire_add_s[4] + 
wire_g_a[7] + wire_gendmodule
