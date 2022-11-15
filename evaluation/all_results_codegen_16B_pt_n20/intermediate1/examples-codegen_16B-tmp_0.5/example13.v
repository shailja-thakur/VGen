// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

wire carry_in, carry_out;

assign cout = sum + carry_out;
assign sum = a + b + carry_in;

always @(posedge clk)
  if (rst)
    cout <= 0;
  else
    carry_in <= carry_out;
endmodule
