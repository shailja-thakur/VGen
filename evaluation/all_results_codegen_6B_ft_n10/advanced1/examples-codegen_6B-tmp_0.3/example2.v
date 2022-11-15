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


wire signed [7:0] b2;

assign b2 = ~b; // b2 is the 2's complement of b

wire [7:0] s_mux;

mux2to1 mux3(b, b2, s[0], s_mux[0]);
mux2to1 mux4(a, s_mux, s[1], s_mux[1]);
mux2to1 mux5(s_mux, b, s[2], s_mux[2]);
mux2to1 mux6(s_mux, a, s[3], s_mux[3]);
mux2to1 mux7(b, a, s[4], s_mux[4]);
mux2to1 mux8(a, b, s[5], s_endmodule
