// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @(posedge clk)
begin
  sum <= (a + b);
  cout <= sum[7];
end
endmodule
