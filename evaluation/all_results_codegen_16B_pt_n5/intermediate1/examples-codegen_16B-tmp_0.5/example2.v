// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b, cout, sum;

// The carry-out is the bit that is not being added.
output carry_out;

// The sum is the bit being added plus the carry-out.
output sum;

// The half adder adds two bits and produces a sum and carry-out.
void half_adder( 
input a, b,
output cout, sum )
{
    int i;
    
    // The carry-out is the bit that is not being added.
    carry_out = 0;
    
    // The sum is the bit being added plus the carry-out.
    sum = a + b + carry_out;
    
    // The half adder adds two bits and produces a sum and carry-out.
    for (i=0; i<2; i++)
    {
        carry_out = sum &endmodule
