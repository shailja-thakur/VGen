// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, cin, sum_out;

// The carry-in is the carry-out of the previous cycle.
wire carry_in = cin;

wire carry_out = carry_in;

// The sum is the output of the half adder.
wire sum = sum_out;

// The half adder adds two bits and produces a sum and carry-out.
assign {
    a_in, b_in, cin,
    carry_in,
    sum_out,
    carry_out
} = {a, b, carry_in};

// The carry-in is the carry-out of the previous cycle.
assign carry_in = carry_out;

// The sum is the output of the half adder.
assign sum = sum_out;

// The half adderendmodule
