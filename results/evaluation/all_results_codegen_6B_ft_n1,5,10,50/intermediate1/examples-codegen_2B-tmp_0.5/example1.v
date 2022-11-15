// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b, cout, sum;

always @(posedge clk)
    if (a == 0)
    {
        if (b == 0)
        {
            cout = 0;
            sum = 0;
        }
        else
        {
            cout = 0;
            sum = 1;
        }
    }
    else
    {
        if (b == 0)
        {
            cout = 1;
            sum = 1;
        }
        else
        {
            sum = a + b;
            cout = sum >> 1;
        }
    }

endmodule
