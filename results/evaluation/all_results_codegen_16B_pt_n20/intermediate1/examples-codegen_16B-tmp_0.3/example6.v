// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a, b;
output cout, sum;

always @(posedge clk)
begin
	if(a)
	begin
		sum <= a + b;
		cout <= sum;
	end
	else
	begin
		sum <= 0;
		cout <= 0;
	end
end

endmodule
