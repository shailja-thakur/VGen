// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input bit_a,
input bit_b;

input carry_in,
input sum_in;

/*
    This is a 3-bit adder that adds three bits.
    This is a multiply-accumulate with carry-in and sum-out.
    The adder has three inputs:
    a, b and carry_in.
    a is the current input.
    b is the carry_in.
    carry_in is the carry_out.
    sum_out is the sum_out.
    The adder has three outputs:
    cout is the sum_out when it is positive.
    sum_out is the sum_out when it is negative.
*/
module three_adder( 
input a, b,
output cout, sum, carry_in, sum_out );

input bit_a,
input bit_bendmodule
