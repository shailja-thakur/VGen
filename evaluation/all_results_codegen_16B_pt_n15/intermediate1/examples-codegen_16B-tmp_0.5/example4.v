// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg A, B, Sum;
reg [1:0] Carry;

always @(posedge clk)
begin
  Sum <= a + b;
  if( Carry )
    Cout <= {a, b};
  else
    Cout <= Sum;
end

half_adder( a, b, cout, sum );

endmodule
