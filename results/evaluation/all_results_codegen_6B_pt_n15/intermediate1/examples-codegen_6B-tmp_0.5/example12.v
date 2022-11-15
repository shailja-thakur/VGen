// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The output of the half adder is the sum of two inputs and the carry-out.
always @(posedge clk)
  cout <= sum + a + b;

endmodule
