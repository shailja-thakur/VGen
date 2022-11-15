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


wire [7:0] s_mux_a;
wire [7:0] s_mux_b;

mux2to1 mux_a(.x(a), .y(b), .s(s_mux_a[7]), .m(s[7]));
mux2to1 mux_b(.x(a), .y(b), .s(s_mux_b[7]), .m(s[6]));

mux2to1 mux_ab(.x(s_mux_a), .y(s_mux_b), .s(s[5]), .m(s[4]));
mux2to1 mux_abc(.x(s_mux_a), .y(s_mux_b), .s(s[3]), .m(sendmodule
