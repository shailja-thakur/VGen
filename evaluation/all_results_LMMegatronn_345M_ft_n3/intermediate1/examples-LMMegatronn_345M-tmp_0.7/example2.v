// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [2:0] g, p;

one_bit_adder add0(a[0], b[0], g[0], p[0], s0_in);
one_bit_adder add1(a[1], b[1], g[1], p[1], s1_in);
one_bit_adder add2(a[2], b[2], g[2], p[2], s2_in);
two_bit_adder add3(a[3], b[3], g[3], p[3], s3_in);

endmodule
