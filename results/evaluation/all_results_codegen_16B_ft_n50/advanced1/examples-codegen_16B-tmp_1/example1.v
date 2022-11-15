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

 wire carry_out_overflow;
 wire overflow_reflect;

 register_with_clock_divider C9 (b[7], a[7], carry_out, overflow, b[7], a[7], 1, 7);

 // negate or reflect the overflow output to give the total signed adder output or purpose to give the output of an unsigned operator.
 assign overflow_reflect = (overflow == 1) ? ~overflow : 1'bz;
 assign s[7] = (overflow_reflect == 1) ? overflow_reflect : overflow;
 assign s[6] = (overflow == 1) ? overflow : carry_out;
 assign s[5] = (overflow_reflect == 1) ? overflow_reflect : carry_out;
 assign s[4] = (overflow == 1) ? overflow : carry_out_reflect_lower[7];
 assign s[3] =endmodule
