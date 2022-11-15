// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_i, b_i, cin, sum_i, carry_out;

half_adder(a_i, b_i, cout, sum_i);

assign a = a_i;
assign b = b_i;
assign sum = sum_i;

assign carry_out = carry;

always @(posedge clk)
  if (a_i and b_i and !cin) 
    sum_i <= (a_i + b_i + carry_out);

endmodule
