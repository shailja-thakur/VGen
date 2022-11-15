// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// q0 is stored with msb bits first
reg q0;
reg q1;

// half adder
reg a_s;
reg b_s;
reg sum_s;
reg carry_out_s;
reg sum_i_s;
assign sum_i = sum_s[31..23];
assign sum_s = sum_i_s[23..15];
assign carry_out = carry_out_s[15..8];

always
            q0 <= sum + carry_out;
           sum <= (a + q0) b_s + (b_s + q1) carry_out;
           carry_out == (b_s + q1) (a_s + b_s) + (a_s + sum_s) carry_out; except [31][31] assignment
           carry_outendmodule
