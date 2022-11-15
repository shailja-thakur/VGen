// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire cin, cout_sum, sum_out;

reg[4] sum_r;

always
begin
  cin = a or b;
  sum_r = sum_r + cin;
  cout_sum = sum_r[3];
  sum_out = sum_r[2];
end

always
begin
  // assign output signals
  sum = sum_out;
  cout = cout_sum;
end

endmodule
