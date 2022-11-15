// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out, carry_out;

assign a_in = a;
assign b_in = b;

reg [2:0] sum;

assign sum = sum_out;

assign cout = sum_out + carry_out;

reg [1:0] carry;

assign carry = carry_out;

always @(posedge clk)
begin
  if (a_in == 1)
  begin
    sum_out <= sum + carry;
    carry_out <= carry;
  end
  else if (b_in == 1)
  begin
    sum_out <= sum + carry;
    carry_out <= carry;
  end
  else
  begin
    sum_out <= sum;
    carry_out <= carry;
  end
endendmodule
