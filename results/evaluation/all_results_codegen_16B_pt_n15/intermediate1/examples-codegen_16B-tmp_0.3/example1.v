// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out, carry_out;

// This is the carry-in register.
reg carry_in;

// This is the sum register.
reg sum;

// This is the output register.
reg cout;

// This is the logic that performs the addition.
always @(posedge clk)
begin
  if (a_in == 1)
    sum_out <= sum + carry_in;
  else
    sum_out <= sum;

  carry_out <= carry_in;

  cout <= sum_out;
end

// This is the logic that performs the addition.
always @(posedge clk)
begin
  if (b_in == 1)
    sum_out <= sum + carry_in;
  else
    sum_out <= sum;

  carry_outend
endmodule
