// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// See half_adder_as_single.
half_adder( 
input c, d,
output cd, ad );

// This is a single bit adder.
module single_bit_adder( 
input a,
output cout, sum );

// See single_bit_adder_as_half.
single_bit_adder( 
input a,
output b );

// This is a summation and carry-out gate.
module sum_adder( 
input a, b,
output cout, sum );

// See sum_adder_as_carry_out.
sum_adder( 
input a, 
output b, 
output cout );

// Half adder without carry-out, i.e. with carry-in.
module half_adder_no_carry( 
input a, b,
output cout, sum );endmodule
