// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void half_adder_process(
input a, b,
output cout, sum );

void half_adder_process(
input a, b,
output cout, sum )
{
    sum = a + b;
    cout = (a + b) >> 1;
}

module sum_carry_adder(
input a, b,
output cout, sum );

void sum_carry_adder_process(
input a, b,
output cout, sum )
{
    sum = a + b;
    cout = (a + b) >> 1;
}

module sum_carry_adder_2(
input a, b,
output cout, sum );

void sum_carry_adder_2_process(
input a, b,
output cout, sum )
{
    sum = a + b;
    cout = (endmodule
