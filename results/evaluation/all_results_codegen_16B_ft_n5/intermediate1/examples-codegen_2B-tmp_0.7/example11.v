// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [1:0] carry_out;

initialize :
{
    cout = b;
    sum = a;
    carry_out = 0;
}

subtract_bit :
{
    sum[n:0] = sum[n] - 1;
    carry_out = sum[n] == 3;
}

carry_bit :
{
    carry_out = 1;
}

carry_bit :
{
}

stimulate :
{
    out_reg = cout;
    if ( carry_out ) {
        carry_out = 0;
        sum[0] = sum[0] + 1;
    }
}

endmodule
