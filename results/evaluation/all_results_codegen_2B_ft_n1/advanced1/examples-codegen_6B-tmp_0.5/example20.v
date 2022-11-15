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



// 

//wire [7:0] a_s; // The most significant bits of a
//wire [7:0] b_s; // The most significant bits of b
//wire [7:0] s_s; // The most significant bits of s

// The next three wires are used to transport the carry out of the signed adder back into the overall carry out
wire [7:0] c_s;
wire [7:0] d_s;
wire [7:0] e_s;

// Instantiate the eight 2's complement numbers

twos_complement tca1(b, b_s);
twos_complement tca2(a, a_s);
twos_complement tca3(s, s_s);

signed_adder sa1(a_s, b_s, c_s,endmodule
