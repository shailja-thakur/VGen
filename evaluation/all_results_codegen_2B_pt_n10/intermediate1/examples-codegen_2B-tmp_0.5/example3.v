// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [4] a_bits;
wire [4] b_bits;

reg [4] sum;
reg [4] carry_out;

always_comb
begin
  a_bits[1:0] <= a[1:0];
  a_bits[3:2] <= a[3:2];
  a_bits[5:4] <= a[5:4];
  a_bits[7:6] <= a[7:6];
  a_bits[9:8] <= a[9:8];
  a_bits[11:10] <= a[11:10];
  a_bits[13:12] <= a[13:12];
  a_bits[15:14] <= a[15:14];
  a_bits[17:16] <= a[17:16];
  a_end
endmodule
