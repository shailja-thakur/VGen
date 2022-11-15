// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

output_wire cout;

always @(posedge clk)
  sum <= sum + a + b;

always @(posedge clk)
  cout <= sum[31];

endmodule
