// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire clk = clk;
wire carry_in = carry_in;

reg a_reg = a_reg;
reg b_reg = b_reg;
reg sum_reg = sum_reg;

// output logic
reg [7:0] sum = sum;

// carry logic
wire carry_out = carry_out;

always @(posedge clk) begin
  if( a_reg == 1 )
  {
    sum_reg <= sum + b_reg;
    carry_out <= sum_reg[6];
    sum_reg[6:5] <= carry_out;
  }
  else
  {
    sum_reg <= sum + carry_in;
    carry_out <= sum_reg[6];
    sum_reg[6:5] <= carry_out;
  }
end

assendmodule
