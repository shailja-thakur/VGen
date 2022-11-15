// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input carry_in;
input sum_in;

output carry_out;

wire msb;

wire sum_out;

wire carry_out_carry_in;

wire carry_out_sum_in;

wire carry_out_sum_out;

// ----------------------------------------------------------------------------
//
//  Half Adder
//
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
//
//  Half Adder
//
// ----------------------------------------------------------------------------

void half_adder_module::half_adder_ctor(
  const half_adder_module::param_type& param
)
{
  m_a = param.a;
  m_b = param.b;
  m_cout = param.cout;
  m_sum = param.sum;
  m_carry_in = param.carry_in;
  m_sum_inendmodule
