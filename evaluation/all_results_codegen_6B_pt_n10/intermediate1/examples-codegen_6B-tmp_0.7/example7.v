// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_out( cout, sum )
    return (a+b + 2*cout) mod 2^12;

half_adder( 
a, b,
cout, sum );

function half_adder_sum( a, b )
    return a+b + 2*cout;
`
endmodule
