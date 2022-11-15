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



wire s_high, b_high;
wire [7:0] s_intermediate;
wire [7:0] a_intermediate;
wire [7:0] sum_intermediate;
wire [7:0] carry_in;



assign carry_in = a[7] + b[7];
assign s_high = s[7] & carry_in;
assign a_intermediate = (a[7] == 1'b1) ? (~a[7:0]) : a[7:0];
assign b_high = b[7] & carry_in;
assign sum_intermediate = a_intermediate + b_high;
assign s_intermediate = (s_high == 1'b1) ? (~s_intermediate) : s_intermediate;
assign overflow = a[7] +endmodule
