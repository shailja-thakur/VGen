// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Calculate the sum of two bits and carry-in
function half_adder_sum(a, b)
{
    cout = a + b;
    sum = cout[0] + (cout[1] << 2);
}

module half_adder_sum_is_cout_and_sum(a, b)
{
    half_adder_sum(a, b);
    if ( cout != sum )
    {
        cout = "ERROR";
    }
}

endmodule
