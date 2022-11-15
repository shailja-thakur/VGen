// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_impl();

function half_adder_impl( a, b )
{
  sum = a + b;
  cout = sum & 0x1;
  sum = sum >> 1;
}

endmodule
