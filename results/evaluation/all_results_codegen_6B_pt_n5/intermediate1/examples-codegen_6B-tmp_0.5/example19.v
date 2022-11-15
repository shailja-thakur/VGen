// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function sum() {
  // Carry-out (carry one bit)
  sum = a + b + 1;
  // Sum
  cout = sum % 2;
  // Carry-out (carry one bit)
  sum = sum / 2;
  return;
}

endmodule
