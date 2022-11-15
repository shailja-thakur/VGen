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


wire signed [6:0] a_signed, b_signed, s_signed, b_mux;

// The most significant bit of a and b are low if the second most significant bit is high.
assign a_signed = {{2{a[7]}}, a[7:2]};
assign b_signed = {{2{b[7]}}, b[7:2]};

// Muxes for the most significant bit of a and b.
mux2X1 #(7) msb_mux_a(a, b, a[7], b[7]);
mux2X1 #(7) msb_mux_b(a, b, b[7], a[7]);

mux2X1 #(7) msb_mux_s(s, a_signed, s[7], a_signed[endmodule
