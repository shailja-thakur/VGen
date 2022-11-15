// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
wire carry_out, done, latch_in, out;
inputs a, b;
latch(a, l_in, out, carry_out)
{
	// is done?
	if(l_in)
	{
		// No, carry-out = carry-in
		carry_out(carry_in);
		done(LUT());
	}
	else
	{
		// Yes, sum = a | b
		//add(a, a)
		sum(a, latch_in, sum);
		//add(b, b)
		sum(b, latch_in, sum);
		// If done is not asserted, carry-out is high and sum lesser than max_value
		carry_out(~done_flg);
		//at this point, we must be adding a carry_in to l_in
endmodule
