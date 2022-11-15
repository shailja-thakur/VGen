// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout;
output sum;

wire carry_out_sum;
wire carry_out_a, carry_out_b;

local s_sum = 0, s_a = 0, s_b = 0;

always @(posedge clk)

if(a == 1 && b == 1) {
    s_a = 1;
    s_b = 1;
    carry_out_sum = carry_out_a = carry_out_b = 0;
} else if (a == 1 && b == 0) {
    s_a = 1;
    s_b = 0;
    carry_out_sum = carry_out_a = 0;
} else if (a == 0 && b == 1) {
    s_a = 0;
    s_b = 1;
    carry_endmodule
