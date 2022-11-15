// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

impure function under_5_to_carry1()
  input cout, a, b,
      carry1 <= 0, carry2 <= 0,
      carry_out := carry1 & carry2;

bool is_half_adder(
input carry1, carry2, carry_out );

var( a, b, cout, sum, carry1, carry2, half, carry_out );

function setup()
{
  a <= 0;
  b <= 0;
  cout <= 0;
  sum <= 0;
  carry1 <= 0;
  carry2 <= 0;
  half <= 0;
  carry_out <= 0;
}

int loop_body()
{
  half <= carry1;
  authority.y <= carry_out & overload.y;
  overload.y <= carry1 & carry2;
  endmodule
