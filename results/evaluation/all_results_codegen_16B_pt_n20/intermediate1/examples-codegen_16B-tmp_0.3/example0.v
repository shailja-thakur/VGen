// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg a, b, sum;
reg carry_in, carry_out;

always @(posedge clk)
begin
  if (rst) begin
    a <= 0;
    b <= 0;
    sum <= 0;
    carry_in <= 0;
    carry_out <= 0;
  end
  else begin
    if (a && b) begin
      sum <= a + b + carry_in;
      carry_out <= a + b + carry_in;
    end
    else begin
      if (a) begin
        sum <= a + carry_in;
        carry_out <= a + carry_in;
      end
      if (b) begin
        sum <= b + carry_in;
        carry_out <= b + carry_in;
      end
    end
  end
end

always @(posedendmodule
