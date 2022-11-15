// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input top, carry_in, carry_out;

input full;

input inb_val;

reg a_val;
reg b_val;
reg cout_val;

reg a_full;
reg b_full;
reg cout_full;

reg a_sum;
reg a_carry;

reg b_sum;
reg b_carry;

reg sum_val;

void half_adder_init()
{
    // Initialize full inputs
    full = 1;
    top = 0;
    carry_in = 0;
    carry_out = 0;
    // Initialize carry outputs
    cout_full = 0;
    cout_val = 0;
    sum_val = 0;
    // Initialize carry inputs
    inb_val = 0;
    a_full = 0;endmodule
