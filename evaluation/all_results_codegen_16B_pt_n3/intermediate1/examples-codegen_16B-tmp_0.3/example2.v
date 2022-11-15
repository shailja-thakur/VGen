// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the carry-in register.
input carry_in;

// This is the carry-out register.
output carry_out;

// This is the sum register.
output sum;

// This is the output bit.
output out;

// This is the output enable signal.
output enable;

// This is the input enable signal.
input enable_in;

// This is the input signal.
input in;

// This is the clock input.
input clock;

// This is the reset input.
input reset;

// This is the reset input.
input reset_in;

// This is the carry-in signal.
input carry_in_in;

// This is the carry-out signal.
output carry_out_out;

// This is the sum signal.
output sum_out;

//endmodule
