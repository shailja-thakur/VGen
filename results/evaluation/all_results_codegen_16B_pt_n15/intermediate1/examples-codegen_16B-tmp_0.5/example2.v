// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input  a, b;
output cout, sum;

reg [2:0] carry;
reg [1:0] sum;

always @(posedge clk) begin
  if (a == 1 && b == 1)
    sum <= carry;
  else
    carry <= carry;
  cout <= sum;
end

half_adder(a, b, cout, sum)
  carry <= 1;
  sum <= 0;
end

endmodule
