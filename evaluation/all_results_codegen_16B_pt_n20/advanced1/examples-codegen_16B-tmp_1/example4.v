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


signed_adder signed_adder(a_in, b_in, s_out, ov_out);
        assume a_in & a_in;
        assume b_in & b_in;
        assume s_out & s_out;
        assume ov_out & ov_out;
        assume !s_out & !b_in & !a_in & (s_out == 0); 
        assume !ov_out & !s_out & (s_out == 0) & !b_in & !a_in & (b_in > a_in) | (ov_out == 1); 
&;Se 
void 
signed_adder(in_a, in_b, out_s, ov_out) 
bool 
& a_in, 
& b_in, 
@@ & sendmodule
