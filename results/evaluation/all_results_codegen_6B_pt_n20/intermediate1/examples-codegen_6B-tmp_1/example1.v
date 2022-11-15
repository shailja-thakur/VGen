// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the half adder. The input is the sum (output of half adder) and
// two bits are added together. The result yields a sum (again an output
// of half adder) and the carry-out is set to the added bits.
module half_adder2( 
input sum, b1, b2,
output b, cout );

// This module contains the main program. Label f counts quickly.
module xor_linker;
{
    input a, b;

    input a, b;
    input b1, b2;

    input sum, watchdog;
    output b, cout;
    output carry_in, carry_out, carry_sum, b1_output;
    output b2_output;
    output carry_sum_out;
    input watchdog_value;

    half_adder2( sum, b1endmodule
