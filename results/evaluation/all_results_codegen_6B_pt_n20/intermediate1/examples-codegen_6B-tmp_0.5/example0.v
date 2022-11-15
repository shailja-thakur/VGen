// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_inst( 
input a, b,
output cout, sum,
input carry_in );

always @(posedge clk)
  cout <= sum;

always @(posedge clk)
  sum <= a + b + carry_in;

endmodule
