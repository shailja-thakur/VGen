// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

# This is the sum register.
reg sum;

# This is the half adder.
# The half adder adds two bits and produces a sum and carry-out.
# The half adder updates the sum register.
# The half adder writes the sum to cout.
# The half adder is executed by the half_adder.
# half_adder requires the half adder inputs a, b, and the half adder output cout.
# half_adder returns: a sum and a carry-out.
# half_adder has no return value.
half_adder( a, b, cout )
{
    sum += a + b;
}
endmodule
