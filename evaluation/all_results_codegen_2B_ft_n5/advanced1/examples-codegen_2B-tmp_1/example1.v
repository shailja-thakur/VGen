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


wire signed [7:0] s;
wire [7:0] bna;
wire occurred_signed_overflow;
wire overflow ;
// Instantiate 4 1-bit comparators
one_bit_bitwise_comparator joob(
.a(a[0]),
.b(b[0]),
.g_a(s[0]),
.g_b(bna[0]));

one_bit_bitwise_comparator manto(
.a(a[1]),
.b(b[1]),
.g_a(s[1]),
.g_b(bna[1]));

one_bit_bitwise_comparator loo(
.a(a[2]),
.b(b[2]),
.g_a(s[2]),
.g_b(bna[2endmodule
