// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_i(
input a, b,
input cout, sum )
{
    output carry = sum_carry( a, b, cout );
    sum = sum_adder( a, b, cout, sum );
    return carry;
}

// Half adder that runs with a delay.
//
// The half adder has a delay of 'delay' cycles.
//
// Adding two bits with the half adder takes 'delay' cycles.
// The sum of the two bits is added with the half adder
// after 'delay' cycles.
//
// The output of the half adder is a carry-out signal.
module half_adder_d( 
input a, b,
input cout, delay,
output sum );

function half_adder_di(
input a, b,
input cout, delay,
input sum,
endmodule
