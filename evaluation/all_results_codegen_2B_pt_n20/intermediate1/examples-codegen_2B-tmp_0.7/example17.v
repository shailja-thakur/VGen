// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );


// This is a half subtractor. A half subtractor subtracts two bits and produces a sum.
module half_subtrautor(
input a, b,
output cout, sum );


// This is a half multiplier. A half multiplier multiplies two bits and produces a sum.
module half_multiplier(
input a, b,
output cout, sum );


// This is a half modulo. A half modulo modifies two bits and produces a sum.
module half_modulo(
input a, b,
output cout, sum );


__attribute__((reqd_work_group_size(32, 32, 1)))
__kernel void __attribute__((reqd_work_group_size(32, 32, 1)))
half_adder(
input a, b,
output cout, sum )
{
    sum = a + b;
}
__endmodule
