// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg a, b;
reg sum, cout;

always @(posedge clk)
begin
  sum <= (a + b);
  cout <= sum[0];
end

endmodule
