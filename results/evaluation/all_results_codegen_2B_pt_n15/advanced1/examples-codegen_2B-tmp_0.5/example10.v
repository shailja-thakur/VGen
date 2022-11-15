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


input a[7:0];
input b[7:0];
output s[7:0];
output overflow;

wire [7:0] a_s, b_s, s_s;

assign s[7:0] = a[7:0] + b[7:0];
assign overflow = a_s && b_s && s_s && (a[7] < b[7]) && (s[7] < 0);

assign a_s = a[7] < b[7];
assign b_s = a[7] < s[7];
assign s_s = a[7] < s[7];
endmodule
