// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_impl()
{
    var sum = 0;
    var carry_out = 0;
    var a_bit = 0;
    var b_bit = 0;

    // Add the two bits
    for( var i = 0; i < 32; i++ )
    {
        a_bit = a[i];
        b_bit = b[i];
        sum = sum + a_bit + b_bit;
        carry_out = sum >> 1;
        sum = sum & 1;
    }

    // Output the sum and the carry-out
    cout = sum;
    cout = cout << 32;
    cout = cout + carry_out;
}
endmodule
