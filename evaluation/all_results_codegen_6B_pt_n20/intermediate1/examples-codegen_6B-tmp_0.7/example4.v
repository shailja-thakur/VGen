// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder() {
  cout <= sum & a & b;
  input carry_out, sum;
  output carry_in;
  carry_in <= carry_out;
  sum <= carry_out & a & b;
  identity;
}
endmodule
