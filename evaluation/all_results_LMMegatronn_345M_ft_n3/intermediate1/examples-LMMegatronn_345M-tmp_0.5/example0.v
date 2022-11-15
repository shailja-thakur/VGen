// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire sum0;
wire sum1;
wire sum2;
wire cout;

and ( sum0, a        , b           );
and ( sum1, sum0         , a          );
and ( sum2, sum1         , a          );
and ( cout, sum2         , a          );
or (cout, sum0, cout);

endmodule
