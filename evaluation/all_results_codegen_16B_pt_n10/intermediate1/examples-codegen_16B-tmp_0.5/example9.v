// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

wire cc, sum_out;

assign sum = sum_out;

assign cc = (a != 0) ? (b != 0) : 0;

reg [2:0] sum_in;

always @(posedge clk)
begin
  if (rst)
    sum_in <= 0;
  else
  {
    if (a)
      sum_in[1] <= b;
    if (a)
      sum_in[0] <= b;
  }
end

assign cout = sum_in[1];
assign sum_out = sum_in[0];

endmodule
