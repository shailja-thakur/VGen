// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
register input [2:0] a;
register input [3:0] b;
register output [2:0] sum;

always @(posedge clk)
begin
  sum <= a;
  if (b==0)
    sum <= a;
  else
    sum <= a + b;
  
  if (b==3)
    cout <= sum;
  else
    cout <= sum + 1'b0;
end
endmodule
