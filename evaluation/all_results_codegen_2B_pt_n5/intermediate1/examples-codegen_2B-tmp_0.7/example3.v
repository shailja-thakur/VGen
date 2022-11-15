// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input adder_in[2];

input a, b;
output cout, sum;

input adder_in[2] = { a, b };

input add_in[2] = { a, b };

input add_out[2] = { cout, sum };

input add_is[2] = { add_in[0], add_in[1] };

input carry_out[1] = { sum };

input carry_is[1] = { carry_out[0] };

module m_adder(
input adder_in[2],
output add_out[2],
output carry_out[1] );

module m_adder_add(
input adder_in[2],
input add_is[2],
output add_out[2] );

module m_adder_carryendmodule
