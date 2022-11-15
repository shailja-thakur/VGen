// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

wire carry_in, carry_out;

always @(posedge clk) begin
  if (a) {
    sum = a + b + carry_in;
    cout = sum[31];
    carry_out = sum[30];
  } else {
    sum = 0;
    cout = 0;
    carry_out = 0;
  }
end

endmodule
