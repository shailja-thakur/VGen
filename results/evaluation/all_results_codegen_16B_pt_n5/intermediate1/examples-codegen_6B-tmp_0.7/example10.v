// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

	// half_adder inputs
	handle a_in = a;
	handle b_in = b;

	// half_adder outputs
	wire cout_out = cout;
	wire sum_out = sum;

	// half_adder logic
	always @(posedge clk)
	begin
		if ( a_in == 0 )
		{
			sum_out <= b_in;
		}
		else
		{
			sum_out <= a_in + b_in;
		}
	end
end

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

	// full_adder inputs
	handle a_in = a;
	handle b_in = b;

	// full_adderendmodule
