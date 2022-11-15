// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

always @(posedge clk)
  if (a)
    sum <= (a + b + '0');
  else
    sum <= '0';

endmodule
