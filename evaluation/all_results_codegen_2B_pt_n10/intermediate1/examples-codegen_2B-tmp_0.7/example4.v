// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input clk;
input carry;

input sum;

const int SIZE = 5;
const int BITS_PER_WORD = 32;

//******************************************************************************
// This is the half-adder, with a carry-out.
void half_adder_with_carry(
input a, 
input b, 
output cout, 
output sum, 
input clk, 
input carry) {
  // Check for carry-out
  if (carry == 0) {
    sum = a ^ b;
  } else {
    sum = a ^ b ^ carry;
  }
  cout = clk;
}
endmodule
