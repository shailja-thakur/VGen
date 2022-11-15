// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg [1:0] sum;

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder( 
input a, b, c,
output cout, sum );

reg [1:0] sum;

always @( posedge clk ) begin
  if ( a and b and c ) begin
    sum <= sum + 1;
    cout <= sum[0];
  end
end

// This is a half adder that has two inputs.
module half_adder_2( 
input a, b,
output cout, sum );

reg [1:0] sum;

// This is a full adder that has two inputs.
module full_adder_2( 
input a, b, c,
output cout, sum );

reg [1:0endmodule
