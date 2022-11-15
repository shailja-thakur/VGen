// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg [4:0] sum;
reg [3:0] carry_in;
reg [3:0] carry_out;

reg [3:0] in;

always @(posedge clk) 
begin
  in <= (a < 30) ? a : in;
  in <= (b < 30) ? b : in;

  sum <= in + carry_in;
  carry_out <= carry_in + carry_out;
  carry_in <= sum[3] && carry_out;
  cout <= sum[2:0];
  
end



// This is a full adder. A full adder adds three bits and produces an output.
module full_adder( 
input a, b, c,
output cout);

reg [4:0] sum;
reg [3:0] carry_in;endmodule
