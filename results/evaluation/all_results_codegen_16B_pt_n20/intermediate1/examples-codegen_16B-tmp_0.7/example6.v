// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always@(posedge clk) begin
	if(a == 1)
	{
		sum <= (a + b);
	}
	else if(a == 0 && b == 1)
	{
		sum <= b;
	}
	else if(a == 1 && b == 0)
	{
		sum <= a;
	}
	else if(a == 0 && b == 0)
	{
		sum <= 0;
	}
	if(sum >= 2)
	{
		cout <= 1;
	}
	else
	{
		cout <= 0;
	}
end
endmodule
