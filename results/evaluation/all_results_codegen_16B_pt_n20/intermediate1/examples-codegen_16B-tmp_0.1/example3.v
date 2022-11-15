// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

always @(posedge clk)
begin
  if (rst)
    sum <= 0;
  else
    sum <= a + b;
  cout <= sum;
end

endmodule
