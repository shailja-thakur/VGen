// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The half adder outputs the sum and carry-out.
always @ (posedge clk)
  cout <= sum;

// The half adder adds two bits.
always @ (posedge clk)
  sum <= a + b + carryout;

endmodule
