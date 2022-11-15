// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg a, b, cout, sum;

always @(posedge clk) begin
  if (rst) begin
    a <= 0;
    b <= 0;
    sum <= 0;
  end else begin
    if (a) begin
      b <= b + 1;
      cout <= a;
      sum <= sum + a;
    end else begin
      a <= a + 1;
      cout <= b;
      sum <= sum + b;
    end
  end
end

endmodule
