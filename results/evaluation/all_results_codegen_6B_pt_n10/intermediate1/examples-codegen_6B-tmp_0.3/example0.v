// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The half adder is implemented as a 2-bit register.
// The input registers are treated as a single bit register.
// The output register is treated as a single bit register.
// The carry out is a single bit register.

always @(posedge clk)
begin
  if (clk)
  begin
    sum <= a + b;
    cout <= sum;
  end
end
endmodule
