// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_define()
{
half_adder <= { a <= b;
    cout <= a[0] + b[0] + sum[0] + sum[1];
    sum <= ( a[1] yor b[1] + sum[1] );
  };
};

endmodule
