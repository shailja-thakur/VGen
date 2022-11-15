// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the carry-in register.
reg carry_in;

// This is the sum register.
reg sum;

// This is the output register.
reg cout;

// This is the carry-out register.
reg carry_out;

// This is the process.
process( in, out, sum, cout, carry_in, carry_out )
{
    // We add two bits.
    sum = a + b + carry_in;

    // Write the sum and carry-out to cout.
    cout = sum;
    carry_out = carry_in;
}

// This is the output port.
port out;

// This is the process instantiation.
half_adder( in, out, sum, cout, carry_in, carry_out )
{
    // Instantiate the process.
    in = inendmodule
