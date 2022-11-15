// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The half adder is a single register.
always @(posedge clk)
  cout <= sum + a + b;

// The half adder is a single register.
always @(posedge clk)
  sum <= a + b;

endmodule
