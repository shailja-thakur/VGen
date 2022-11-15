// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

unsigned carry,
cas;

always @(posedge clk)
  begin
  cout <= modlog2( a[branch(clk)] + b[branch(clk)] + cas )[branch(clk)];
  cas <= ({
    cout;
    a <= i_1 & b <= i_1 & i_1 <= sum;
  });
end

endmodule
