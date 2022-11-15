// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
input q;
@foreachint loop;
@foreachres sum = q + a + b + q;
@foreachc cout = sum + q;
@end

module half_adder_zcf( input a, b );
input q;
output res;
@foreachint loop;
@foreachres half_adder("q", a, b, cout, res);
@end

// This module checks whether overflow occurs in CZC3. Eventually the intermediate (doubled)
// sum should be folded into a single output. The output should be considered whether the half-adder
// should cover the final range rather than the first.
module half_adder_cf( 
input a, b,
output cout, sum, carry_out );
input q;
reset carry_out;
@foreachint loop;
carry_out = half_adder("qendmodule
