// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @(posedge clk)
  sum <= a + b + carry_out;

always @(posedge clk)
  cout <= sum[2];

endmodule
