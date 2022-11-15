// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the carry-in register.
reg carry_in;

// This is the output register.
reg sum;

// This is the carry-out register.
reg carry_out;

// This is the input register.
reg a_input, b_input;

// This is the output register.
reg cout_output;

// This is the carry-in register.
reg carry_in_output;

// This is the carry-out register.
reg carry_out_output;

// This is the input register.
reg a_input_output, b_input_output;

// This is the output register.
reg cout_output_output;

// This is the carry-in register.
reg carry_in_output_output;

// This is the carry-out register.
reg carry_out_output_outputendmodule
