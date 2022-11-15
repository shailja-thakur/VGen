// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The half adder is a single input register.
// The output is a single input register.
// The sum is a single output register.
// The carry-out is a single output register.

always @(posedge clk)
  cout <= a + b + sum;

always @(posedge clk)
  sum <= a + b + carry_out;

endmodule
