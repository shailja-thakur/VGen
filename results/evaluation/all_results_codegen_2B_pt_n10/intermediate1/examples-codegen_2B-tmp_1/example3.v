// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void main(void)
{
  cout = a ^ b; // form I[0.31]
  sum = a << 1 | carry_in;
  carry_out = roll_carry( sum, 32 );
}

#endif

"""
endmodule
