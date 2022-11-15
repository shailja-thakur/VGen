// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire shared_value;

always @(posedge clk_p)
{
	// A half adder adds two bits and produces a sum and carry-out.
	sum[0] = a[0] + b[0];
	// sum[0]   = (a[0] + b[0]);
	sum[1] = a[1] + b[0] + (pin >> 1);
	shared_value = sum[1];
	// shared_value = (a[1] + b[0] + (pin >> 0));
	wire [clk_p-1] = (pin & 1);
	//wire [clk_p-1] = (pin & 1);
}

endmodule
