// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire a_in, b_in, sum_out, carry_out;

// This is the carry-in register.
reg carry_in;

// This is the sum register.
reg sum;

// This is the carry-out register.
reg carry_out;

// This is the logic function.
void logic( 
input a, b,
output cout, sum, carry_in, carry_out );

// This is the carry-in register.
reg carry_in;

// This is the sum register.
reg sum;

// This is the carry-out register.
reg carry_out;

// This is the logic function.
void logic( 
input a, b,
output cout, sum, carry_in, carry_out );

// This is the carry-in register.
reg carry_in;

endmodule
